# AI Product Evals
**Type:** Concept / Process

## Definition
Evals son scoring mechanisms que miden la calidad y efectividad de un sistema AI. A diferencia de los tests de software tradicionales (deterministas, binarios), los evals operan sobre sistemas no-deterministas donde el mismo input puede producir outputs distintos. Son el equivalente de un examen de manejo en lugar de un test de unidad: el entorno es variable, el éxito es cualitativo, y el objetivo es validar comportamiento probable, no garantizado.

El origen del término viene de la comunidad de ML/AI research, pero su uso se ha masificado con los LLMs. Para PMs, los evals son la herramienta que cierra el gap entre "el demo se ve bien" y "tenemos evidencia de que esto funciona para usuarios reales."

## Por qué importa
Sin evals, los cambios al sistema AI son apuestas. Con evals, cada cambio (nuevo modelo, nuevo prompt, nueva arquitectura) tiene un benchmark objetivo. Los equipos que construyen evals antes de lanzar pueden iterar con confianza; los que no, terminan debuggeando en producción y perdiendo la confianza de los usuarios.

Escribir buenos evals también fuerza al PM a pensar con precisión en el problema del usuario: ¿qué significa exactamente "respuesta correcta" o "tono amigable" en este contexto? Es una forma de product thinking disfrazada de tarea técnica.

## Los 3 tipos

| Tipo | Cuándo usarlo |
|------|---------------|
| **Human evals** | Para validar señales que requieren juicio humano; como ground truth para calibrar los otros tipos |
| **Code-based evals** | Para checks deterministas (formato correcto, campo presente, código válido) |
| **LLM-as-judge** | Para evaluar calidad semántica a escala — el tipo más poderoso y el más relevante para PMs |

LLM-as-judge: un LLM externo recibe el output del sistema y lo califica según criterios en lenguaje natural. Se escribe como un prompt estructurado, no como código. La clave es validar el eval en sí contra un ground truth humano antes de confiar en él.

## La fórmula de 4 partes (para LLM-as-judge)
1. **Role** — contexto del juez ("eres un evaluador de texto")
2. **Context** — el output del sistema a evaluar
3. **Goal** — qué querés medir, con ejemplos de bueno/malo
4. **Terminology/label** — definición precisa de los términos que usás

## El ciclo iterativo
**Collection → First-pass → Iteration → Production monitoring**

Empezar simple: 10–100 ejemplos con labels humanos, un eval de hallucination o tone, apuntar a ≥90% accuracy. Agregar complejidad solo cuando el eval simple ya es confiable.

## Key distinctions
- **Evals ≠ unit tests:** los tests verifican comportamiento determinista; los evals miden calidad probabilística
- **Evals ≠ A/B tests:** los A/B tests miden impacto en usuarios reales; los evals miden calidad del sistema antes de llegar a los usuarios
- **Eval del sistema ≠ eval del eval:** el eval en sí puede estar mal diseñado. Siempre validar el eval contra ground truth humano antes de confiar en los scores.

## Cómo construir el sistema (Husain + Shankar)
Ver [[sources/building-eval-systems-hamel-husain-lenny]] para el proceso completo. Resumen:
1. **Error analysis** — open coding (~100 traces) → axial coding → <10 failure modes priorizados
2. **Eval suite** — code-based para failures objetivos; LLM-as-judge (con train/dev/test split y TPR+TNR) para subjetivos
3. **Operacionalizar** — CI golden dataset (bloquea regresiones) + production monitoring (descubre nuevas) + guardrails (previene en tiempo real)

El flywheel: monitoring → error analysis → fix → golden dataset → repeat.

## Related pages
[[sources/beyond-vibe-checks-evals-aman-khan-lenny]] [[sources/building-eval-systems-hamel-husain-lenny]] [[sources/ai-product-dev-lifecycle-cccd-lenny]] [[concepts/ai-agents-for-pms]] [[entities/aman-khan]] [[entities/hamel-husain]]
