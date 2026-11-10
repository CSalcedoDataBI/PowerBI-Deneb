# Tendencia IBCS: ventas frente al año anterior

¿Vamos mejor o peor que el año pasado, y en qué meses? Tres bandas cuentan la misma historia: arriba la variación en %, en medio la variación en dinero (verde o rojo) y abajo el real (azul) sobre el año anterior (gris).

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/ibcs-tendencia-ano-anterior>

![Vista previa](https://csalcedodatabi.com/deneb/previews/ibcs-tendencia-ano-anterior.webp)

## Cuándo usarlo

Cuando basta con el año anterior como referencia. Las tres bandas dan la misma historia en %, en dinero y en valor, así que el ojo encuentra los meses malos sin leer cifras. Si la medida baja cuando va bien (costes), invierte los colores.

## Los campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `Month Date` | columna, fecha | Primer día de cada mes: el eje X |
| 2 | `Sales Amount` | medida, numérico | El real (AC): columnas azules |
| 3 | `PY Sales Amount` | medida, numérico | El año anterior (PY): columnas grises y base de la variación |

## Los datos del ejemplo

Datos **simulados**: un año que crece con sus temporadas, gana al anterior en diez meses y pierde en marzo y julio. Las variaciones (en % y en dinero) se calculan en el spec a partir de las dos medidas, sin DAX extra.

El modelo es una sola tabla, `Ventas`, en línea (`#table` en M): no pide credenciales ni red, y Power BI la carga al abrir. Sustitúyela por tu modelo.

## Contenido

| | |
|---|---|
| `ibcs-tendencia-ano-anterior.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto: la portada «Thank You!!» y la página del visual |
| `Tendencia_IBCS_Ano_Anterior.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
