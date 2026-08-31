# Apify connector — troubleshoot visibility in Claude Code

## Context
Joaco conectó el connector custom de Apify (`https://mcp.apify.com`) desde Claude Desktop, como paso manual pendiente del plan anterior (`jobsearch-integrate-role-discovery-outreach.md`, Source C). No aparece en esta sesión de Claude Code (VSCode) — `claude mcp list` confirma que Apify no está ni siquiera como "needs authentication", solo el set fijo (Spotify, Google Drive, Amplitude, Notion, Gmail, Calendar). Hipótesis: esta integración de Code trae un set fijo de conectores de claude.ai, no cualquier custom connector agregado del lado Desktop — puede ser solo un tema de sync/caché de sesión.

Joaco eligió: reiniciar sesión primero (opción más simple, sin costo) antes de asumir que hace falta otra vía.

## Próximo paso (para Joaco, fuera de esta sesión)
1. Cerrar y reabrir la ventana de VSCode (o abrir una terminal nueva con `claude`).
2. Correr `/mcp` (o pedirme `claude mcp list`) de nuevo.
3. Volver acá con el resultado:
   - **Si aparece Apify**: seguimos con la Fuente C tal como quedó documentada en `job-pipeline.md` — correr la mega-prompt de sourcing sobre los 4 arquetipos.
   - **Si sigue sin aparecer**: dos rutas alternativas ya evaluadas y descartadas por ahora en favor del reinicio — (a) configurar Apify como MCP server directo con API token propio (`claude mcp add`, sin depender del connector de claude.ai), o (b) correr el sourcing de Apify directamente en Claude Desktop/web y pegarme los resultados acá para integrarlos a mano en `job-pipeline.md`.

## Verificación
`claude mcp list` debe mostrar `claude.ai Apify` (o el nombre que le haya puesto Joaco) como Connected o Needs authentication — cualquiera de los dos confirma que la sesión ve el connector.
