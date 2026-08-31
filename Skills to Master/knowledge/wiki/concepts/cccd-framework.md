# CC/CD Framework (Continuous Calibration / Continuous Development)
**Type:** Concept / Framework

## Definition
Framework para el ciclo de desarrollo de AI products, desarrollado por Aishwarya Reganti y Kiriti Badam con base en +50 implementaciones en producción. El nombre es un guiño a CI/CD (Continuous Integration/Continuous Deployment) del desarrollo de software tradicional, pero con una diferencia central: en lugar de integrar y deployar código determinista, el CC/CD itera sobre comportamiento no-determinista y gestiona el tradeoff entre agency y control.

La premisa: los AI products no se construyen como software. Tienen dos propiedades que rompen los supuestos del desarrollo tradicional — non-determinism y agency. El CC/CD da estructura para operar dentro de esas propiedades sin perder el control del producto.

## Las dos propiedades que cambian todo

**Non-determinism:** el mismo input puede producir outputs distintos. Esto aplica en ambos extremos — los usuarios interactúan de formas abiertas e impredecibles, y el sistema responde de forma probabilística. Diseñás para comportamiento probable, no garantizado.

**Agency-control tradeoff:** cada nivel de autonomía que le das al sistema (sugerir, actuar, decidir) implica ceder control. Si dás agency sin datos que la justifiquen, perdés visibilidad de lo que el sistema está haciendo — y cuando algo falla, no podés rastrearlo.

## Los 6 pasos del loop

### Continuous Development (CD) — antes de lanzar
1. **CD1 — Scope capability + curate data:** Define cada versión del producto por nivel de agency (no por feature set). v1 = alta control, baja agency; v2 = algo más de autonomía; v3+ = agency significativa. Armar un reference dataset de 20–100 ejemplos con ground truth para poder evaluar.

2. **CD2 — Set up application:** Buildear solo lo necesario para el nivel actual. No sobreingeniear. Implementar control handoffs — puntos donde un humano puede tomar control fácilmente cuando el sistema falla o se equivoca.

3. **CD3 — Design evals:** Definir antes de lanzar cómo medís si el sistema está funcionando. Cada versión tiene sus propios evals atados al scope de ese nivel.

### Transición: Deploy
No es el final — es el inicio del loop de calibración. Lanzás con logs, evals y control handoffs en su lugar.

### Continuous Calibration (CC) — después de lanzar
4. **CC4 — Run evals:** Correr los evals sobre datos reales de usuarios. Samplear inteligentemente si el volumen es alto.

5. **CC5 — Analyze behavior:** Revisar manualmente los casos de bajo score. Documentar patrones de error en tabla. Esta revisión manual es subestimada y crítica — es donde aparece la señal real.

6. **CC6 — Apply fixes:** Ajustar el sistema según los patrones. Este es el único momento donde ingeniería más sofisticada está justificada — respaldada por datos, no por especulación.

## Por qué importa
El patrón que Reganti y Badam vieron repetirse en 50+ empresas: equipos que buildean v3 (alta agency) desde el día 1, sin datos ni evals, terminan con sistemas que fallan de formas imposibles de rastrear. El loop CC/CD previene ese espiral al hacer que cada nivel de agency se gane con evidencia de los niveles anteriores.

## Agency ladder (ejemplo: customer support)
| Versión | Agency | Control | Qué hace |
|---------|--------|---------|----------|
| v1 | Baja | Alta | Rutea tickets al departamento correcto |
| v2 | Media | Media | Sugiere resoluciones para revisión humana |
| v3 | Alta | Baja | Resuelve tickets scoped de forma autónoma |

## Key distinctions
- **CC/CD ≠ CI/CD:** CI/CD maneja código determinista; CC/CD gestiona comportamiento probabilístico
- **Versionar por agency ≠ versionar por feature:** en AI, la pregunta no es "¿qué features tiene v2?" sino "¿cuánto puede decidir el sistema solo en v2?"
- **Deploy ≠ done:** en software tradicional, el deploy es el hito. En CC/CD, es la transición al loop de calibración

## Related pages
[[sources/ai-product-dev-lifecycle-cccd-lenny]] [[sources/beyond-vibe-checks-evals-aman-khan-lenny]] [[concepts/ai-product-evals]] [[concepts/ai-agent-taxonomy]] [[entities/aishwarya-reganti]] [[entities/kiriti-badam]]
