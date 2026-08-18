# _contoso-maestro — la copia limpia de Contoso Retail

**Esta carpeta es un maestro de solo lectura. No se trabaja aquí dentro.**
Cada visual nuevo arranca tomando una COPIA de esta carpeta:

```
_contoso-maestro/                      ← maestro limpio (no se toca)
deneb-incubadora/<slug>/pbip/          ← copia de trabajo del visual <slug>
```

Regla: si abres Power BI Desktop, lo abres sobre la **copia**, nunca sobre el
maestro. Así el maestro no acumula páginas de experimentos, y cada visual arranca
del mismo punto reproducible.

## De dónde salió (y por qué de ahí)

Copiado de `E:\MIS-REPO\visual-studio-pbi\pbip` el **2026-08-07**, no de
`_reference/pbip/contoso-retail/`. La razón, medida y no supuesta:

- El **modelo semántico de las dos es idéntico byte a byte** (`diff -rq` sobre
  `ContosoRetail.SemanticModel`: sin diferencias).
- El informe **sí** difiere, y ahí gana la copia de trabajo: su `page1` lleva el
  bloque `developer` con la versión `1.9.1.0` del visual Deneb — la escribe Power
  BI Desktop al guardar. Es decir, es el linaje que el Desktop instalado abrió y
  guardó de verdad. La de `_reference` no lo tiene (y usa el schema
  `pagesMetadata` 2.0.0 frente al 1.0.0 que escribió el Desktop).

## Qué se limpió al traerla

- **Borradas** las páginas de experimentos: `page2` («Deneb (generado)») y
  `page3` («Constelacion»), que entraron con los commits del efecto constelación.
- `pages.json` repuntado: `pageOrder: ["page1"]` y `activePageName: "page1"`.
  Sin esto el informe abre en una página que ya no existe.
- **Excluido** `.pbi/` (≈4 MB de `cache.abf`, estado local del editor). Está en el
  `.gitignore` heredado; nunca se versiona.

Verificado tras limpiar: cero referencias colgantes a `page2`/`page3` en todo el
árbol, y los 11 archivos JSON parsean.

Queda `page1` («Modelo»), el modelo semántico completo (7 tablas + `_Measures` +
cultura `es-ES`) y el `diagramLayout`.

## Pendiente (decidido, no hecho)

- **Página «Home» de presentación** en el maestro — la añade Cristobal.
- **Mover el maestro a su sitio definitivo.** Hoy vive en el submódulo porque está
  en desarrollo; el destino natural es el repo de la herramienta
  (`visual-studio-pbi`), donde además hay que **limpiar el `pbip/` original y
  entronizarlo como maestro**. Eso es trabajo de una sesión del repo de
  herramienta, no de una sesión de contenido.
