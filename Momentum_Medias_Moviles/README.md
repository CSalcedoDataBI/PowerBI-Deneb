# Momentum: ventas con medias móviles de 3 y 6 meses

¿Tus ventas aceleran o frenan? Sobre la línea de ventas de cada mes van dos medias móviles: la de 3 meses (naranja) reacciona rápido y la de 6 meses (gris, discontinua) marca el fondo.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/momentum-medias-moviles>

![Vista previa](https://csalcedodatabi.com/deneb/previews/momentum-medias-moviles.webp)

## Cuándo usarlo

Cuando una serie mensual es ruidosa y la pregunta es si el negocio acelera o frena: si la media de 3 meses cruza por encima de la de 6, el impulso es positivo. Necesita al menos 6 meses para que la media larga signifique algo. Con estacionalidad fuerte (picos de diciembre, valles de abril), compárala además con el año anterior.

## Los campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `Month Date` | columna, fecha | Primer día de cada mes: el eje X |
| 2 | `Sales Amount` | medida, numérico | Las ventas del mes: la línea «Real» |

## Los datos del ejemplo

Las 12 filas de 2019 de Contoso V2 (Sales Amount = Σ Quantity × Net Price), las mismas que la vista previa de la web. Las dos medias se calculan en el spec con `window`: no hacen falta medidas DAX extra.

El modelo es una sola tabla, `Ventas`, en línea (`#table` en M): no pide credenciales ni red, y Power BI la carga al abrir. Sustitúyela por tu modelo.

## Contenido

| | |
|---|---|
| `momentum-medias-moviles.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto: la portada «Thank You!!» y la página del visual |
| `Momentum_Medias_Moviles.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
