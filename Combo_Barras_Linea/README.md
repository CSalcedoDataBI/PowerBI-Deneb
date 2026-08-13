# Barras y línea con doble eje

Las barras llevan el importe y la línea el porcentaje, cada una con **su propia
escala Y**. Es el gráfico que más se arma a mano en Power BI y el que peor suele
quedar; esta es la versión limpia.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/combo-barras-linea>

![Vista previa](https://csalcedodatabi.com/deneb/previews/combo-barras-linea.webp)

## Lo que tiene de particular

**Una sola línea del spec hace que exista el visual.** `resolve: {scale: {y:
"independent"}}`. Sin ella Vega-Lite fusiona las dos escalas y el margen (0,21)
queda aplastado contra el cero frente a ventas (cientos de miles). Con ella hay
dos ejes de verdad.

**El doble eje aquí está justificado, y no siempre lo está.** Dinero y porcentaje
son unidades distintas, así que dos escalas informan. Si tus dos series comparten
unidad, **no uses doble eje**: dos series en un eje único comparan de verdad y el
doble eje solo exagera. Está dicho también en la ficha.

**Lo que se lee en el ejemplo de Contoso.** Las ventas van planas todo 2024
(802K–952K al mes), pero el margen se desploma de **21,9% en septiembre a 11,9%
en diciembre**: la campaña de fin de año se vende con descuento. Eso es
exactamente lo que un combo existe para enseñar, y en un gráfico de barras solo
no se ve.

## Los tres campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `YearMonth` | columna, texto | Periodo del eje X. Formato `YYYY-MM` |
| 2 | `Total Sales` | medida, numérico | El importe: altura de las barras (eje izquierdo) |
| 3 | `Margin %` | medida, numérico | El porcentaje: altura de la línea (eje derecho) |

## Requisitos

- **El periodo, como texto `YYYY-MM`.** El eje X es nominal a propósito: evita de
  raíz el desfase de huso horario de las escalas temporales. El orden se sostiene
  porque `YYYY-MM` ordena igual alfabética que cronológicamente — con `2024-M1` o
  `202401` hay que revisar el `sort` y el `labelExpr`.
- Vega-Lite **5.16.3** · Deneb **1.6.2.1**.

## Detalles del spec que conviene conocer

- **El `resolve: independent` da una escala por CAPA, no dos por gráfico.** Por eso
  las tres capas del porcentaje (línea, puntos, etiqueta) viven en un grupo `layer`
  anidado con `resolve.scale.y = "shared"`. Sin ese anidamiento, la capa de
  etiqueta —que está filtrada a una fila— calcula su dominio sobre esa fila y la
  etiqueta cae fuera de la línea.
- **Un solo dueño de cada eje.** `x` va en el `encoding` de nivel superior, no
  repetido capa por capa. Repartir definiciones de eje entre capas con `axis: null`
  en unas y no en otras hace desaparecer los ejes.
- **El grid es de una sola escala.** El del eje izquierdo va tenue; el derecho lleva
  `grid: false` explícito. Pintar los dos produce dos rejillas desalineadas, que es
  lo que ensucia casi todos los combos.
- **Las barras arrancan en cero; la línea no.** La longitud de la barra codifica
  magnitud, así que su cero es obligatorio. La línea usa `zero: false` porque con el
  margen entre 11% y 22% forzar el cero la aplasta contra el techo — es una perilla
  consciente, y un eje que no empieza en cero exagera la variación.
- **Una sola etiqueta, en el máximo.** Nombra la serie (sustituye a la leyenda) y da
  su valor pico. Va en el máximo porque encima de un máximo local el espacio está
  libre por definición: en el primer o el último punto la etiqueta acaba tachada por
  la propia línea.
- **Los meses se nombran desde el spec** con `labelExpr` sobre los dos últimos
  caracteres del periodo. El modelo no se toca.

## Contenido

| | |
|---|---|
| `combo-barras-linea.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto, contra el modelo Contoso Retail |
| `Combo_Barras_Linea.zip` | Todo lo anterior, empaquetado |

El PBIP trae un filtro de visual `DimDate[Year] = 2024`, que es lo que hace que el
informe entregue los mismos 12 meses que enseña la vista previa.

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
