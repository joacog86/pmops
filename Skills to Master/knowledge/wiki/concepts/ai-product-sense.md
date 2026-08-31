# AI Product Sense
**Type:** Concept / Skill

## Definition
La capacidad de anticipar correctamente qué será impactante para los usuarios y qué es técnicamente factible con AI — antes de que haya datos que lo confirmen. No es conocimiento de ML ni de arquitecturas de modelos. Es intuición sobre cómo se comportan los sistemas AI en producción: cuándo fallan, por qué, y qué cambio produce qué resultado.

El término contrasta con "product sense" genérico: donde el product sense clásico requiere entender comportamiento de usuario, AI product sense también requiere entender las propiedades específicas de los sistemas AI — non-determinismo, degradación de contexto, límites de retrieval, comportamiento de agentes.

## Por qué importa
Los PMs sin AI product sense toman decisiones basadas en demos impresionantes y promesas de vendors, no en entendimiento real del sistema. El resultado: features que funcionan en staging y fallan en producción, scope de v1 demasiado ambicioso, y bugs que no pueden diagnosticar porque no entienden el mecanismo.

Los PMs con AI product sense pueden:
- Diagnosticar por qué un AI feature da mal output (¿RAG? ¿context rot? ¿prompt design?)
- Scoping versiones realistas de AI features (agency ladder)
- Hablar con eng sin necesitar traducción — en lenguaje de context window, tool calls y evals
- Anticipar dónde va a fallar un sistema antes de que falle

## Cómo se construye (Raviv + Khan, 2026)
La forma más efectiva no es leer documentación ni tomar cursos — es usar coding agents (Cursor, Claude Code) para trabajo no técnico diario. Al ver cómo el agente busca archivos (RAG), maneja instrucciones persistentes (memory), y se degrada con el tiempo (context rot), la intuición se construye de adentro hacia afuera.

**4 conceptos clave que se internalizan en la práctica:**

| Concepto | Qué es | Por qué importa para PMs |
|----------|--------|--------------------------|
| **RAG** | El agente busca archivos relevantes antes de responder | Si el output es malo, preguntá: ¿tiene la información correcta? |
| **Memory (AGENTS.md)** | Texto prepended a cada thread — sin magia | Memory tiene costo de context window; ser intencional con qué va ahí |
| **Context engineering** | Diseñar qué entra al context window y cuándo | La skill real detrás de "prompt engineering" en sistemas de producción |
| **Context rot** | Performance degrada a medida que el context crece | Síntoma: el agente se vuelve menos preciso; solución: threads nuevos con contexto curado |

## Señales de que lo tenés
- Cuando alguien dice "el AI se confundió," podés hacer la pregunta de diagnóstico correcta en lugar de asumir que "el modelo es malo"
- Podés describir cómo reproduciría un producto AI que te impresionó usando herramientas conocidas (Cursor, Claude Code, un MCP)
- Sabés la diferencia entre un problema de RAG, un problema de memory y un problema de context engineering sin necesitar que un engineer te lo explique

## Related pages
[[sources/how-to-build-ai-product-sense-tal-raviv-aman-khan-lenny]] [[sources/build-personal-ai-copilot-tal-raviv-lenny]] [[concepts/ai-agents-for-pms]] [[concepts/cccd-framework]] [[concepts/ai-product-evals]] [[entities/tal-raviv]] [[entities/aman-khan]]
