# Bitpanda — Recruiter screen prep (PM, Securities & Commodities)

## Context

Joaco tiene agendado un **Recruiter Phone Screen** con Astrid Carolina Herrera Garcia (Talent Acquisition) para el req **4954936101 — Product Manager, Securities & Commodities**, Bitpanda. Estaba para el 7 de octubre 15:00–15:30 CET, se reprogramó, fecha nueva por confirmar. Es la **ronda 1 de 4** (Recruiter Screen → 1st Round → 2nd Round → Final Exec / Bar Raiser).

Astrid mandó la agenda de antemano — seis puntos. Eso es inusual y es una ventaja: se puede preparar respuesta a respuesta en lugar de adivinar.

El problema que resuelve este plan no es falta de material. Joaco ya tiene un CV tailored para este req exacto, un análisis de gaps hecho en septiembre, un banco de ocho historias STAR y transcripts de cuatro rondas reales en N26. El problema es que **nada de eso está mapeado contra esta agenda**, y que sus propios retros diagnostican una cosa concreta: *"Content is solid; delivery is the failure mode"* — divaga en el TMAY (JB lo cortó: "keep it more summary"), se bloquea en reframes ("So I messed up with the other way around perspective. So I'm blocked, sorry!"), y usa frases que se auto-socavan.

El punto 2 de la agenda de Astrid — *"What are the top 3 most important things you're looking for?"* — es **literalmente la pregunta que lo congeló con JB en N26**, en su forma más directa. Ese es el riesgo central de esta llamada.

Resultado buscado: un documento que Joaco pueda leer en 20 minutos antes de la llamada y que le deje seis respuestas con tiempo asignado, un piso de dominio para el punto 6, y el protocolo de compostura a mano.

---

## Decisiones ya tomadas (2026-10-06/12)

| Tema | Decisión |
|---|---|
| Ciudad (Vienna vs Barcelona) | **Fuera de alcance.** No se prepara argumento de ubicación. |
| Over-qualification (piden 2–4 años, tiene 8) | **No lo levanta él.** Se prepara respuesta cargada por si Astrid la plantea, nada más. |
| Formato | Brief completo + guion de respuestas. Un solo `.md`. |
| Comp | Joaco tiene un número y lo pasa. **Hueco marcado en el doc** hasta que lo dé. |
| Kantox (puntos 4 y 5) | **Huecos marcados, no inventados.** Ver sección "Lo que no se escribe". |

---

## Entregable

Un archivo: `Job Search/Opportunities/26-09-14 - Bitpanda - PM Securities and Commodities/interview-prep-recruiter-screen.md`

Esa carpeta ya tiene `cv-content.py`, `tailoring-notes.md`, `job-description.md` y los PDF enviados. El prep va ahí, siguiendo el patrón de N26 Lending (`interview-prep-final.md` + `scripts.md` en la carpeta de la oportunidad).

Marco rector: **MVIP de Erika Gemzer** (`knowledge/wiki/sources/first-round-interview-erika-gemzer.md`) — una primera ronda tiene un solo objetivo, ganarse la segunda conversación. No demostrar maestría. Eso fija el nivel de profundidad de todo el doc, sobre todo del punto 6.

### Estructura del doc

**0. Antes de entrar** (media página)
- Datos duros: Astrid, TA Partner, 15–30 min, video. Es screen de alineación/motivación/potencial, no de producto — lo dice el portal: *"completely centered around alignment, motivation, and potential"*.
- Qué CV tiene ella adelante (el de `cv-content.py` del 09-14: summary que abre con broker + activación 30%, Despegar promovido, bullet de AI-agent interno quitado).
- **Protocolo de compostura**, copiado de `ankur-cockpit.md` §D: pausa de 2 segundos sin rellenarla con disculpa → una sola pregunta aclaratoria (*"Could you clarify what you mean by X?"*, nunca *"can you repeat the question"*) → estructurar en voz alta antes de responder.
- **Lista de frases prohibidas**, de `hr-transcript-analysis.md`: *"it's not the same, obviously"*, *"I don't have a direct example"*, *"can you give me more inputs"*, *"sorry, I got blocked"*, *"I'm not an expert in X, but…"*.

**1–6. Un bloque por punto de agenda.** Cada bloque: qué evalúa realmente / guion en inglés con tiempo / qué NO decir / repreguntas probables.

| # | Agenda | Qué se usa | Tiempo |
|---|---|---|---|
| 1 | Introductions, who are you | TMAY reescrito. Fallo documentado: divagó con JB y con Henri. Versión cronometrada, arco broker → payments/credit → engine, cierre en por qué Bitpanda. | **60 seg, duro** |
| 2 | Top 3 things you're looking for | **El bloque crítico.** Tres cosas concretas, en orden, cada una atada a algo verificable del req. Framing: qué gana él, no qué les da. Esta es la pregunta que lo bloqueó en N26 — va escrita palabra por palabra. | 90 seg |
| 3 | Familiarity with our domain | El material más fuerte que tiene. IOL = dos años en broker retail multi-activo (equities, bonos, fondos, CEDEARs, dólares). **El paralelo CEDEAR** de `tailoring-notes.md` líneas 74–82 como pieza central. Tabla de traducción de instrumentos (CEDEAR → depositary receipt, caución → repo, MEP → FX vía bonos pareados). Y el límite dicho en voz alta: *"I owned what the customer sees and does; I did not own clearing or settlement."* | 2 min |
| 4 | Current role | Kantox. Riesgo opuesto al resto: los retros dicen *"minimizá Kantox, cap de 30 segundos"* porque ahí es donde divaga — pero acá la pregunta es literalmente sobre eso. Estructura de `kantox-hedging-engine.md`: use cases → business rules → scenarios, en ese orden y explicando por qué ese orden. Regla de estilo del mismo archivo: **nunca decir "complex"**. | 90 seg + repreguntas |
| 5 | Key challenges | **Hueco marcado.** Ver abajo. | — |
| 6 | Technical specifics | Cheat sheet de dominio al nivel que pide el req ("good functional understanding"), no más. | 2 min |

**7. Preguntas para Astrid** — tres, de las que demuestran research y además sirven. Candidatas: cómo se reparte el ownership entre los PMs de securities ahora que margin trading ya está vivo; qué relación tiene este rol con Vision Chain / RWA o si son equipos separados; qué significó para el equipo de producto el lanzamiento de margin 20x en julio.

**8. Comp y logística** — guion para anclar el número (hueco) + notice period.

**9. Over-qualification** — respuesta cargada, no se usa salvo que ella abra.

### El cheat sheet de dominio (punto 6)

Una página, nivel funcional. Cubre:

- **Ciclo de una orden retail**: order entry → routing → execution → confirmation → clearing → settlement. Qué es T+1 y por qué cambió. Quién es cada contraparte (exchange, market maker, custodio, CCP).
- **Market vs limit, best execution** bajo MiFID II. Qué obliga MiFID II a un broker retail: best execution, categorización de clientes, appropriateness test, transparencia de costes, reporting. **Framing honesto**: él tiene BCRA, no MiFID II — lo transferible es traducir un regulador en flujos de producto, y eso lo hizo (auditoría "must vs assumed" con Legal, historia B del banco).
- **Fractional shares**: cómo un broker ofrece fracciones de una acción real y qué implica en custodia y en lo que el cliente cree que posee.
- **Margin trading**: Bitpanda lanzó **20x sobre acciones, ETFs y ETCs reales el 8 de julio de 2026**, +875 instrumentos, sin comisión de compra, €1 de venta, 0,18% diario de financiación, 1% de liquidación. La pieza que vale: **no son CFDs** — el cliente compra el subyacente real, y por eso no aplican los topes de apalancamiento de ESMA para CFDs sobre acciones (5:1). Es financiación garantizada por valores, no un derivado. *Verificar antes de escribirlo — es un punto que impresiona si está bien y hunde si está mal.*
- **RWA / tokenización**: Vision Chain, L2 sobre OP Stack, lanzada marzo 2026 para tokenizar acciones, bonos y fondos bajo MiCA/MiFID II. Partners: N26, Deutsche Börse, Raiffeisen, RAKBANK. IPO en Frankfurt en el radar, valuación objetivo €4–5B.
- **El paralelo CEDEAR** como cierre: dar acceso a un activo que vive en el mercado de otro, a través de un envoltorio que resuelve custodia, regulación y divisa, mientras el cliente ve un botón de comprar. Es la lógica de CEDEARs y es la lógica de la línea de producto de Bitpanda. Ese paralelo es lo que lo diferencia de un candidato que leyó Investopedia la noche anterior.

Fuentes a citar en línea en el doc (regla `feedback_save_research_sources`), con nivel de confianza por dato (`feedback_research_confidence`).

---

## Lo que NO se escribe

Tres cosas quedan como huecos explícitos, no como contenido generado. Regla `feedback_behavioral_stories`: un scaffold escrito por IA no es una historia; se construye desde las palabras de Joaco.

1. **Punto 5 — key challenges.** El doc deja la estructura y la pregunta que él tiene que contestarse, con dos candidatos nombrados (el problema combinatorio de validar un espacio de escenarios ramificado; qué implica el cambio de misión de Kantox para el engine). `kantox-hedging-engine.md` marca ambos como OPEN y advierte: *"Needs your own words. Don't let this get drafted for you."*
2. **Las dos secciones OPEN de Kantox**: qué deciden los algoritmos vs las reglas, y cómo valida que el output es correcto dada la ramificación. Se marcan como preguntas a contestar antes de la llamada, no se rellenan.
3. **El número de comp.** Hueco hasta que Joaco lo pase.

También queda fuera, y se dice por qué en el doc: **el anzuelo del CV**. El bullet de Kantox dejado vago a propósito (*"shipped new features that made the engine more flexible"*) es un anzuelo deliberado. `kantox-hedging-engine.md` advierte: *"si preguntan y titubeás, el anzuelo se vuelve un agujero."* El doc nombra las dos cosas que hay detrás (un parámetro fijo que se volvió configurable; algo que se pedía por soporte y ahora es self-serve) y le pide que tenga listo el *por qué* de cada una — pero no escribe la respuesta.

**Historia G (Kantox version upgrade) no se usa.** Está marcada ⛔ desde el 14-09 porque Joaco desautorizó la premisa; `story-matrix.md` todavía la rutea para Q5 y Q15, lo cual es deuda abierta. Si hace falta una historia de priorización, se usa D (mobile 0→1, el documento de "no va en V1" firmado por el CPO).

---

## Archivos que se leen para construirlo

| Archivo | Para qué |
|---|---|
| `Opportunities/26-09-14 - Bitpanda.../tailoring-notes.md` | Paralelo CEDEAR, tabla de instrumentos, gaps reales, el límite "no owné clearing" |
| `Opportunities/26-09-14 - Bitpanda.../cv-content.py` + `job-description.md` | Qué CV tiene Astrid adelante; texto exacto del req |
| `Interviews/kantox-hedging-engine.md` | Puntos 4 y 5, regla de no decir "complex", los dos OPEN |
| `Interviews/behavioral/iol-kyc-funnel.md` (B), `iol-mobile-0-to-1.md` (D) | Munición para repreguntas de los puntos 3 y 5 |
| `Opportunities/26-05-14 - N26 - Lending/hr-transcript-analysis.md` | Frases prohibidas, patrón de respuesta mala |
| `.../ankur-cockpit.md` §D | Protocolo de compostura |
| `.../entrevistas-JB-Henri-comparacion.xlsx` | El fallo exacto en "is this a fit FOR YOU" — base del punto 2 |
| `knowledge/wiki/sources/first-round-interview-erika-gemzer.md` | MVIP: objetivo único de una ronda 1 |
| `knowledge/wiki/sources/deepali-vyas-hiring-system.md` | "Anchor to their inflection point" para el punto 2 |
| `knowledge/wiki/sources/ai-interview-coach-lenny-noam-segal.md` | Earned secrets / spiky POV, para no sonar a candidato preparado con IA |

Investigación web adicional antes de escribir el cheat sheet: verificar la mecánica margin-vs-CFD y los topes de ESMA; confirmar fechas y cifras de Vision Chain y del lanzamiento de margin.

---

## Verificación

El doc está listo cuando:

1. **Se lee en 20 minutos.** Si es más largo, no sirve para repasar antes de la llamada.
2. **Los seis puntos de la agenda tienen guion con tiempo asignado**, y el punto 1 cabe en 60 segundos leído en voz alta cronometrado.
3. **Cero frases de la lista prohibida** aparecen en los guiones.
4. **Cero números inventados.** Cada cifra del cheat sheet tiene fuente y etiqueta de confianza. Cada cifra de la experiencia de Joaco sale del CV base o del banco de historias — la regla #1 de `behavioral-stories-reformulated.md` es *"nunca inventés un número"*.
5. **Cero frases copiadas del JD** (regla `feedback_cv_no_jd_echo`): "shipping velocity", "user flows", "high-converting" no aparecen.
6. **Los tres huecos están marcados visiblemente**, no rellenados.
7. **Pasada final contra el req**: cada requisito del JD tiene o evidencia nombrada o un gap declarado honestamente. Ninguno queda sin tocar.

Opcional, si Joaco quiere después de leerlo: mock en vivo del punto 2 y del punto 4. Es el único paso que testea el modo de fallo diagnosticado, y es el que quedó sin correr en N26 (`ankur-cockpit.md` §E).
