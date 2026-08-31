# Handoff briefing — Kantox PM OS (para completar en la PC del laburo)

Este documento es 100% plantilla y metodología. **Cero contenido específico de Kantox** — nombres, workflows reales, compañeros, dolores concretos se completan en el laburo, no acá. Armado como parte del entrenamiento para el rol de Senior PM, Operations Automation & Enablement en N26 (ver `interviews/N26 - Ops Automation Enablement/`).

## Cómo usar esto

1. Abrí este archivo en la PC del laburo (copiá el contenido o el archivo entero)
2. Si tenés Claude Code disponible ahí, importalo como contexto inicial de un proyecto nuevo — mismo patrón que usás para "graduar" una oportunidad de `~/Claude/Discovery/` a workspace propio
3. Completá cada sección con información real — no dejes las preguntas guía sin responder, son el punto de partida, no el resultado final

## Sección 1 — Problema actual

Preguntas a responder con datos reales:
- ¿Qué workflows hacen los PMs de Kantox hoy que son manuales y de alto volumen? (candidatos a validar: escribir PRDs, procesar research/entrevistas de usuarios, notas de reuniones, actualizaciones a roadmap, reportes a stakeholders — pero no asumir, preguntarles a los PMs reales)
- ¿Cuánto tiempo por semana le dedica un PM promedio a cada uno de esos workflows hoy?
- ¿Cuál de esos workflows genera más quejas o fricción cuando se hace mal o tarde?

## Sección 2 — Process mapping (aplicar la metodología de `how-oae-pms-work.md`)

Para cada workflow candidato de la Sección 1:
- Mapear el proceso real paso a paso (no el proceso "oficial" — el que efectivamente pasa)
- Clasificar cada paso: ¿es value demand (agrega algo que el negocio pidió) o failure demand (existe porque algo falló antes — falta de información, un formato mal definido, una herramienta que no hace lo que debería)?
- Cuantificar: ¿qué % del tiempo total es failure demand?

## Sección 3 — Propuesta

- ¿Qué parte del setup personal de Joaco (skills de Claude Code, templates, estructura de wiki) resuelve directamente el failure demand identificado?
- ¿Qué hay que adaptar (quitar contenido personal, generalizar) antes de que otro PM lo pueda usar?
- ¿Cuál es el piloto más chico posible? (1 workflow, 1-2 PMs voluntarios — no la solución completa de entrada)

## Sección 4 — Impacto proyectado

No usar términos vagos ("ahorra tiempo", "mejora la eficiencia"). Usar:
- Horas ahorradas por PM por semana (proxy directo de FTE impact)
- Si aplica, costo/tiempo por unidad de trabajo antes vs. después (ej: tiempo para producir un PRD, antes vs. después)

## Sección 5 — Rollout sin autoridad formal

Playbook (condensado de `executive-onboarding-playbook` y `altitude-horizon-framework`, ambos en `~/.claude/skills/`):
- **Body of evidence primero, pitch después** — no proponer el sistema completo antes de tener un piloto con números reales
- **Empezar con voluntarios**, no con un mandato — 1-2 PMs que ya confían en vos, no todo el equipo de una
- **Cascading Context Map** — antes de escalar, traducir la iniciativa al lenguaje de cada audiencia: a tu manager en términos de impacto en el equipo, a otros PMs en términos de tiempo que les devuelve, a Legal/IT (si aplica) en términos de qué datos toca y cómo
- **Medir y volver a mostrar evidencia** — cada ronda de expansión se gana con el resultado de la ronda anterior, no con la promesa de la siguiente

## Sección 6 — Riesgos y compliance

Checklist antes de compartir cualquier cosa con el equipo:
- [ ] ¿Hay datos de clientes, cuentas, o información confidencial de Kantox en algún template o ejemplo?
- [ ] ¿Los skills/templates compartidos corren con las herramientas y permisos que Kantox aprueba, o hay que validarlo con IT/Legal primero?
- [ ] ¿Qué pasa si un PM usa esto con datos sensibles sin darse cuenta? ¿Hay una guía clara de qué no meter en un prompt?

## Checklist de qué NO llevar de esta sesión (ya validado — no debería hacer falta, pero por las dudas)

Este documento no contiene: nombres de compañeros de Kantox, detalles de productos internos, métricas reales de la empresa, ni ninguna credencial o dato de cliente. Si en algún momento se agrega contenido real de Kantox a este archivo (al completarlo en el laburo), dejar de sincronizarlo con este repo personal.

## Referencias generadas en esta sesión (PC personal)

- `interviews/N26 - Ops Automation Enablement/skill-gap-map.md` — gap de skills vs. el JD de N26
- `interviews/N26 - Ops Automation Enablement/how-oae-pms-work.md` — metodología completa (process mining, failure demand analysis, loop de prototipado agéntico, reporte de impacto)
- `interviews/interview-bank/jds/n26-oae.md` — el JD guardado
