# Kantox PM OS — memoria viva (lado PC personal)

## Por qué existe este proyecto

Arrancó como entrenamiento para un rol específico: Senior PM, Operations Automation & Enablement en N26 (`interviews/N26 - Ops Automation Enablement/`, JD en `interview-bank/jds/n26-oae.md`). El gap más grande frente a ese JD no era de habilidad de PM general — era no tener evidencia real de haber diseñado y desplegado un sistema de IA agéntica para que *otros* lo usen, con métricas de impacto operacional (ver `skill-gap-map.md`).

La idea: llevar el PM OS personal de Joaco (su setup de Claude Code — skills, wiki, templates) al resto del equipo de PMs de Kantox. Es un proyecto de trabajo real, no un ejercicio de entrevista — pero además genera exactamente la evidencia que falta para el gap de arriba.

## Restricción de arquitectura: PC personal vs. PC del laburo

Decisión tomada 2026-08-06: todo el contenido específico de Kantox (workflows reales, compañeros, dolores concretos, la propuesta final, la estructura compartida) se construye en la PC del laburo — no acá. Esta carpeta (`kantox-pm-os/` en el PM Ops personal) solo contiene:

- Este `context.md` — la memoria de por qué y cómo arrancó el proyecto
- `handoff-briefing.md` — plantilla + metodología, 100% genérica, sin datos de Kantox, para completar en el laburo

Cuando Joaco arranque el trabajo real en la PC de Kantox, `handoff-briefing.md` se importa como base de contexto — mismo patrón que usa `~/Claude/Discovery/Opportunities/<Nombre>/context.md` al graduar una oportunidad a workspace propio.

## Estado

🟡 En preparación (lado personal). No arrancó el trabajo real en Kantox todavía.

## Próximos pasos (fuera de esta sesión, en la PC del laburo)

1. Completar el handoff-briefing.md con datos reales (proceso, dolores, compañeros)
2. Validar la propuesta con 1-2 PMs voluntarios antes de escalar
3. Una vez el piloto tenga resultados reales: volver acá y agregar una historia STAR a `interview-bank/behavioral/` — no antes, y no como scaffold generado, sino construida desde la experiencia real (regla de memoria `feedback_behavioral_stories`)
4. Si hay métricas de impacto reales, sumarlas a `interview-bank/execution-metrics/`

## Archivos relacionados

- `interviews/N26 - Ops Automation Enablement/skill-gap-map.md`
- `interviews/N26 - Ops Automation Enablement/how-oae-pms-work.md`
- `interview-bank/jds/n26-oae.md`

## Historias candidatas (2026-08-23) — NO promovidas todavía a interview-bank/behavioral/

Dos frentes de trabajo real en curso en Kantox que son candidatos a historia STAR una vez tengan resultados — **no se crean como STAR completas hasta entonces**, por la regla de arriba. Quedan acá anotadas para no perderlas y retomarlas cuando el piloto tenga números reales.

**Candidata H — PM OS para el equipo**
Construcción de un "PM OS" para mejorar el workflow del equipo de PMs de Kantox: skills + Claude Code + agentes propios. Es el mismo proyecto descripto arriba (el training para el rol de N26 OAE que se volvió trabajo real). Falta: piloto con 1-2 PMs voluntarios, resultado medido (horas ahorradas / failure demand reducido, per `handoff-briefing.md` sección 4).

**Candidata I — Discovery sobre la nueva visión de la compañía**
Discovery corrido en función de la nueva visión de Kantox, apoyado en el PM OS de arriba — entrevistas con Sales, CSM y clientes. Falta: insight concreto que salió del discovery, y qué cambió en el producto/estrategia a partir de eso (equivalente al "Result" de una STAR).

**Cuándo promover:** cuando cada una tenga un Result real y medible, armar el archivo completo en `interview-bank/behavioral/` (formato de A-G) y sumarla a `story-matrix.md` + `README.md` como H e I.
