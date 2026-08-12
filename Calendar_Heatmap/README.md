# Mapa de calor de calendario

Cada celda es un día y su color es la intensidad de la medida: el año entero cabe
en una rejilla de **53 semanas × 7 días**, con una faceta por año. Sirve cuando la
pregunta es **cuándo** y no **cuánto**.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/calendar-heatmap>

![Vista previa](https://csalcedodatabi.com/deneb/previews/calendar-heatmap.webp)

## Lo que tiene de particular

**Solo pide dos campos: una fecha y una medida.** El calendario —semana del año,
día de la semana, año— lo deriva el propio spec con `timeUnit`. Casi todos los
tutoriales equivalentes para Power BI te hacen añadir tres o cuatro columnas
auxiliares al modelo; aquí el modelo no se toca, así que la plantilla vale contra
cualquier modelo que tenga una fecha y una medida.

**Lo que se lee es el patrón, no el total.** En el ejemplo de Contoso salta a la
vista sin que nadie lo explique: la fila del sábado va oscura de punta a punta y
la del domingo pálida. Medido sobre 2023–2024, el sábado vende **5,0 veces** lo
del domingo (4.637.342 frente a 927.270).

## Los dos campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `Date` | columna, `dateTime` | Fecha a grano **día**. Una fila por día — el spec no agrega |
| 2 | `Total Sales` | medida, numérico | La medida cuya intensidad pinta cada día |

## Requisitos

- **Grano diario.** Con datos mensuales la rejilla queda casi vacía.
- **Al menos un año**, para que el patrón semanal se repita lo bastante.
- Vega-Lite **6.4.1** · Deneb **1.9.1.0**.

## Detalles del spec que conviene conocer

- **Todos los `timeUnit` van en variante UTC.** Sin ella entra el huso horario
  local y enero puede etiquetarse como «Dec».
- **La etiqueta del tooltip se construye con `utcFormat`**, no con `format`. Un
  `format` sobre un campo temporal se resuelve en hora local y, sobre fechas a
  medianoche UTC, muestra el **día anterior**.
- **Los accesos a campo van con corchetes** (`datum['__1__']`). Deneb sustituye el
  token de forma textual, así que con punto un nombre con espacios —`Total
  Sales`— produce `datum.Total Sales`, que no es sintaxis válida.
- **Ancho y alto explícitos.** Vega-Lite no admite `autosize` en specs
  multi-vista: sin ellos la faceta se estira y el segundo año desaparece.
- **Los días sin venta van en gris** (`#E8E6E3`), distinto del extremo claro de la
  rampa: «no vendimos» y «vendimos poco» son cosas distintas.

## Contenido

| | |
|---|---|
| `calendar-heatmap.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto, contra el modelo Contoso Retail |
| `Calendar_Heatmap.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
