# Agent Design Doc — [nombre del agente]

`[Wiki: ai-agent-taxonomy + cccd-framework]` · Plantilla de 1 página. Si no entra en una página, el agente está mal scopeado.

**Autor:** · **Fecha:** · **Estado:** draft / aprobado / construido / operando

## 1. Problema y usuario
- **Quién** lo usa (persona concreta, no "el equipo"):
- **Qué hace hoy sin el agente** (proceso actual, minutos/semana, dónde duele):
- **Por qué este problema y no otro** (qué NO estamos automatizando y por qué está bien):

## 2. Categoría (triage de 5 minutos)
- Flowchart del proceso: ¿cuántas ramas? (<20 → Cat 1)
- ¿Quién define el camino de ejecución, el humano o el LLM?
- ¿El contexto cambia qué acciones se disparan?
- ¿Necesitan coordinarse varios agentes?
- **Categoría:** Cat 1 determinístico / Cat 2 ReAct / Cat 3 multi-agente
- **Justificación en una línea:**

## 3. Escalera de agency (versionar por autonomía, no por features)
| Versión | Qué hace el agente | Qué hace el humano | Se gana con |
|---|---|---|---|
| v1 | sugiere / clasifica | decide y ejecuta | — (arranque) |
| v2 | ejecuta con revisión previa | aprueba | evals de v1 ≥ __% en N ≥ __ casos |
| v3 | ejecuta solo en scope acotado | audita muestra | evals de v2 + __ semanas sin incidente |

**Esta iteración construye:** v_

## 4. Anatomía
- **Modelo(s):** (heavy / light, y por qué)
- **Instrucciones / identidad:** (dónde viven, cómo se versionan)
- **Tools:** (lista; marcar cuáles escriben)
- **Memoria / estado:** (qué persiste, dónde, quién lo lee)
- **Trigger:** (cron / evento / humano)

## 5. Control handoffs y blast radius
- **Qué NO puede hacer nunca** (capacidades que no se construyen, no que se confirman):
- **Puntos de aprobación humana:**
- **Peor caso si falla silenciosamente:**
- **Cómo me entero de que falló:**
- **Rollback:**

## 6. Evals (diseñados antes del launch)
- **Dataset de referencia:** __ ejemplos con ground truth, de dónde salen
- **Eval #1** (uno solo al principio): qué mide, tipo (humano / código / LLM-judge), umbral
- **Cómo valido el eval** contra labels humanos:
- **Qué miro en producción** (CC4-CC6): muestra manual semanal de __ casos

## 7. Costo y métrica de éxito
- **Presupuesto:** __ USD/mes · __ tokens/run estimados
- **Métrica de impacto:** (minutos ahorrados/semana, leads procesados, hit rate, etc.)
- **Baseline hoy:**
- **Objetivo a 4 semanas:**

## 8. Riesgos y decisiones abiertas
-
