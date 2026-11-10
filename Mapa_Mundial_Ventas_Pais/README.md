# Mapa mundial de ventas por país

¿Dónde se vende más y qué país cae frente al año anterior? Cada país se colorea por sus ventas, de azul claro a azul oscuro, y los que no venden quedan en gris. Haz clic en un país para destacarlo.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/mapa-mundial-ventas-pais>

![Vista previa](https://csalcedodatabi.com/deneb/previews/mapa-mundial-ventas-pais.webp)

## Cuándo usarlo

Cuando la geografía es parte de la pregunta y hay pocos países. Para comparar cifras con precisión, unas barras ordenadas se leen mejor que un color.

## Los campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `Country` | columna, texto | País, con el nombre de Natural Earth («United States» también vale) |
| 2 | `Sales Amount` | medida, numérico | Las ventas del país: el color |
| 3 | `PY Sales Amount` | medida, numérico | El año anterior: tooltip y variación |

## Los datos del ejemplo

Ventas **simuladas** de 107 países (más Online, que no tiene silueta y no se dibuja), inventadas para enseñar el mapa del mundo completo. Las siluetas de 175 países van dentro del spec en TopoJSON, sin la Antártida: no se descarga ningún mapa al abrir el informe. Si tu columna usa otros nombres, añádelos al cálculo `geoKey` del spec.

El modelo es una sola tabla, `Ventas`, en línea (`#table` en M): no pide credenciales ni red, y Power BI la carga al abrir. Sustitúyela por tu modelo.

## Contenido

| | |
|---|---|
| `mapa-mundial-ventas-pais.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto: la portada «Thank You!!» y la página del visual |
| `Mapa_Mundial_Ventas_Pais.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.

Siluetas: [world-atlas](https://github.com/topojson/world-atlas) 2.0.2 (`countries-110m`), ISC, Copyright 2013-2019 Michael Bostock; datos de Natural Earth (dominio público). El aviso completo viaja en la `description` del spec.
