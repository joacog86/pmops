# AI Prototyping Tools
**Type:** Concept / Reference

## Definition
Herramientas que permiten a PMs sin background técnico construir prototipos funcionales usando lenguaje natural. Se dividen en tres capas con capacidades y trade-offs distintos:

**Capa 1 — Chatbots** (Claude, ChatGPT): generan código pero no lo hostean. Útiles para prototipos de una sola página sin diseño complejo.

**Capa 2 — Cloud development environments**: generan, hostean y despliegan código. Son el sweet spot para PMs. Cuatro opciones principales:
- **v0** (Vercel): diseño bonito por default con Next.js + Shadcn. Hostea cliente + servidor en infra real.
- **Bolt**: rápido y flexible, pero solo client-side. No soporta auth, sesiones persistentes, ni multi-user nativo.
- **Replit**: full-stack con Python. Ideal para tools internos y dashboards de datos.
- **Lovable**: mejor para producción real — tiene auth, Supabase, integraciones con GitHub/AI providers. Sin editor de código.

**Capa 3 — Local dev assistants** (Cursor, Copilot, Windsurf): para quienes ya saben programar. No aptos para PMs no técnicos como punto de entrada.

## Por qué importa
El prototipado con AI comprime el ciclo discovery → feedback de semanas a horas. Un PM que puede construir un prototipo clickeable en 30 minutos cambia la dinámica de las sesiones de usuario, los steering meetings y la escritura de PRDs. No reemplaza a engineering — valida antes de llegar a engineering.

## Árbol de decisión para elegir tool

```
¿Necesitás backend, auth o datos persistentes?
├── Sí → ¿Ya es una app real o puede llegar a serlo? → Lovable
│          ¿Es un tool interno o usa Python/data? → Replit
└── No → ¿Importa el diseño visual?
         ├── Sí → v0
         └── No, solo funcionalidad → Bolt
              ¿Es algo muy simple de una página? → Claude directo
```

## Estrategias de debugging (cuando el prototipo se rompe)

1. **Reflection**: pedí un plan antes del código. *"Start by detailing the minimum requirements. Do not write any code."*
2. **Batching**: empezá por el data model, luego agregá features de a una. Menos contexto inicial = mejores resultados.
3. **Specificity**: describí exactamente qué tecnología, qué archivo, qué líneas cambiar.
4. **Lost context**: usá checkpoints del tool para rollback. Enfocá instrucciones en un archivo a la vez.

## Related pages
[[sources/ai-prototyping-for-pms-colin-matthews-lenny]] [[sources/build-personal-ai-copilot-tal-raviv-lenny]] [[concepts/ai-agents-for-pms]] [[entities/colin-matthews]]
