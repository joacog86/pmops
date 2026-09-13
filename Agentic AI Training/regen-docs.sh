#!/bin/bash
# Regenera los .docx desde los .md (los .md son la fuente de verdad).
# Uso: ./regen-docs.sh          desde la carpeta Agentic AI Training
set -e
cd "$(dirname "$0")"
TMP=$(mktemp -d)
for pair in "PLAN:PLAN" "README:README" "templates/agent-design-doc:templates/agent-design-doc"; do
  src="${pair%%:*}"; dst="${pair##*:}"
  pandoc "$src.md" -f gfm -t docx -o "$TMP/out.docx"
  rm -rf "$TMP/u" && mkdir "$TMP/u" && (cd "$TMP/u" && unzip -q "$TMP/out.docx")
  python3 - "$TMP/u" <<'PY'
import sys, re, os
d = sys.argv[1]
p = os.path.join(d, 'word/document.xml'); s = open(p).read()
s = s.replace('<w:tblW w:type="auto" w:w="0" />', '<w:tblW w:type="pct" w:w="5000" />')
W3 = [1300, 900, 7160]
def fix(m):
    t = m.group(0)
    if len(re.findall(r'<w:gridCol', t)) != 3: return t
    t = re.sub(r'<w:tblGrid>.*?</w:tblGrid>', '<w:tblGrid>' + ''.join(f'<w:gridCol w:w="{w}" />' for w in W3) + '</w:tblGrid>', t, flags=re.S)
    def row(rm):
        i = [0]
        def cell(c):
            w = W3[min(i[0], 2)]; i[0] += 1; x = c.group(0)
            return x.replace('<w:tcPr>', f'<w:tcPr><w:tcW w:type="dxa" w:w="{w}" />', 1) if '<w:tcPr>' in x else x.replace('<w:tc>', f'<w:tc><w:tcPr><w:tcW w:type="dxa" w:w="{w}" /></w:tcPr>', 1)
        return re.sub(r'<w:tc>.*?</w:tc>', cell, rm.group(0), flags=re.S)
    return re.sub(r'<w:tr>.*?</w:tr>', row, t, flags=re.S)
open(p, 'w').write(re.sub(r'<w:tbl>.*?</w:tbl>', fix, s, flags=re.S))
p2 = os.path.join(d, 'word/styles.xml'); t = open(p2).read()
t = t.replace('<w:spacing w:after="36" w:before="36" />\n    </w:pPr>', '<w:spacing w:after="36" w:before="36" />\n    </w:pPr>\n    <w:rPr><w:sz w:val="18" /><w:szCs w:val="18" /></w:rPr>')
t = t.replace('<w:rFonts w:ascii="Consolas" w:hAnsi="Consolas" />\n      <w:sz w:val="22" />', '<w:rFonts w:ascii="Consolas" w:hAnsi="Consolas" />\n      <w:sz w:val="18" />')
open(p2, 'w').write(t)
PY
  rm -f "$dst.docx"
  (cd "$TMP/u" && zip -q -r -X "$OLDPWD/$dst.docx" .)
  echo "regenerado $dst.docx"
done
rm -rf "$TMP"
