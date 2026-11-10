# Benchmark: ventas por país frente a Online y Estados Unidos

¿Cómo va cada país frente a las referencias? Todas las líneas van en gris y dos se ven siempre: Online (azul) y Estados Unidos (naranja). Haz clic en un punto y la línea de su país se enciende en verde.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/benchmark-ventas-por-pais>

![Vista previa](https://csalcedodatabi.com/deneb/previews/benchmark-ventas-por-pais.webp)

## Cuándo usarlo

Cuando hay muchas series y lo que importa es compararlas con una o dos de referencia, no leerlas todas: el gris deja ver la forma del grupo sin competir con las referencias.

## Los campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `Month Date` | columna, fecha | Primer día de cada mes: el eje X |
| 2 | `Country` | columna, texto | Una línea por país |
| 3 | `Sales Amount` | medida, numérico | Las ventas del país en el mes |

## Los datos del ejemplo

Las ventas de 2019 por país de Contoso V2 (9 series × 12 meses), las mismas que la vista previa de la web. Las dos referencias están fijadas por nombre en el spec (`Online` y `United States`): cámbialas por las tuyas.

El modelo es una sola tabla, `Ventas`, en línea (`#table` en M): no pide credenciales ni red, y Power BI la carga al abrir. Sustitúyela por tu modelo.

## Contenido

| | |
|---|---|
| `benchmark-ventas-por-pais.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto: la portada «Thank You!!» y la página del visual |
| `Benchmark_Ventas_Por_Pais.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
