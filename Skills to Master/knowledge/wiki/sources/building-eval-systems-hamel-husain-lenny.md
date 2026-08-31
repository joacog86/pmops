# Building eval systems that improve your AI product — Hamel Husain & Shreya Shankar (Lenny's)
**Fecha:** 2025-09 | **Likes:** 360 | **Fuente:** https://www.lennysnewsletter.com/p/building-eval-systems-that-improve
**Procesos:** [ai-products] [metrics]

## TL;DR
El artículo de Aman Khan explica qué son los evals y por qué importan. Husain + Shankar explican cómo construirlos. Tres fases: error analysis (descubrir qué medir), build eval suite (code-based vs LLM-as-judge), y operacionalizar (CI + monitoring). La diferencia entre un dashboard ignorado y mejora continua real está en si arrancaste desde los failure modes reales del producto.

## Core idea

**Fase 1 — Error analysis (antes de medir, saber qué medir)**
1. Designar un "principal domain expert" como árbitro único de calidad (frecuentemente, el PM)
2. ~100 interacciones reales → **open coding**: critique libre + pass/fail por interacción
3. **Axial coding**: agrupar critiques en <10 categorías de failure modes
4. Contar por categoría → priorizar dónde invertir

**Fase 2 — Build eval suite**
Para cada failure mode: ¿objetivo (rule-based) o subjetivo (judgment)?
- **Objetivo** → code-based evaluator: rápido, barato, determinista
- **Subjetivo** → LLM-as-judge con proceso riguroso:
  - Ground truth: domain expert da pass/fail + critique (binario, no escala Likert — la escala es una trampa)
  - Split: 10-20% train / 40-45% dev / 40-45% test
  - Medir con **TPR + TNR** (no accuracy — datasets imbalanceados la distorsionan)

**Fase 3 — Operacionalizar**
- **CI safety net:** golden dataset + code-based evals en cada PR; bloquea regresiones antes de producción
- **Production discovery engine:** LLM judges async en muestras de producción; dashboard de calidad real
- **Guardrails:** evals síncronos en el request path para failures críticos (bajo false-positive rate es requisito)
- **Flywheel:** monitoring detecta failure → error analysis → fix producto + add to golden dataset → repeat

## Cuándo aplicarlo

**Al arrancar un AI product sin evals:** empezar por error analysis (100 traces, un domain expert, open/axial coding). No arrancar con métricas genéricas de "hallucination" o "toxicity" — son desconectadas de los failure modes reales del producto.

**Al debugear por qué los evals no informan decisiones:** probablemente saltaste error analysis y medís cosas que no correlacionan con los problemas reales de usuarios.

**En entrevistas sobre AI product quality:** la cadena error analysis → open/axial coding → LLM judge → CI golden dataset → monitoring flywheel es la respuesta concreta a "¿cómo asegurarías calidad en un AI feature?"

## Qué significa para Joaco
Khan (wiki) = qué son los evals y por qué. Husain/Shankar = cómo construirlos en la práctica. Para N26: si te preguntan cómo abordarías el rollout de un AI feature (savings nudges, PFM, KYC auto-decisioning), este framework completo — desde error analysis hasta CI flywheel — es la respuesta que distingue a alguien que entiende AI products de alguien que solo habló de ellos.

## Comparaciones y tensiones
- Complementa directamente [[concepts/ai-product-evals]] (Aman Khan): Khan = taxonomía y motivación; Husain/Shankar = proceso de implementación
- Conecta con [[concepts/cccd-framework]]: el paso CD3 de Reganti/Badam es "run evals" — Husain/Shankar dice exactamente cómo ejecutar ese paso

## Watch out
- Off-the-shelf metrics (hallucination, toxicity) solo son útiles para descubrir failure modes durante error analysis — no como métricas de dashboard de producción.
- Accuracy sola engaña en datasets imbalanceados. Si el AI pasa el 99% de los casos, un judge que siempre dice "pass" tiene 99% de accuracy y 0% de utilidad. Siempre medir TPR + TNR juntos.

[[concepts/ai-product-evals]] [[entities/hamel-husain]] [[concepts/cccd-framework]]
