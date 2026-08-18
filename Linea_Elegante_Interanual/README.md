# Línea elegante, actual vs año anterior

Una sola línea suave cuenta la tendencia; una segunda, punteada y discreta, la
compara contra el mismo mes del año anterior. Sin leyenda: el último punto
lleva su valor y la variación interanual escritos junto a la línea.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/linea-elegante-interanual>

![Vista previa](https://csalcedodatabi.com/deneb/previews/linea-elegante-interanual.webp)

## Lo que tiene de particular

**El área es decorativa, no cuantitativa.** El eje Y no arranca en cero
(`zero: false`), así que un área rellena hasta el fondo del gráfico exagera la
magnitud si se lee como encoding. Aquí la magnitud la codifica la **línea**; el
área es solo un degradado sutil bajo ella (`stack: null` — sin esa línea,
Vega-Lite auto-apila cualquier `area` a cero, aunque el eje diga lo contrario).

**Año completo, solo en enero y julio.** Con 24 meses de historia, una
etiqueta por mes se satura y "23"/"24" a dos dígitos es fácil de pasar por
alto. El eje muestra `Ene 2023`, `Jul 2023`, `Ene 2024`, `Jul 2024` — cuatro
etiquetas, año inequívoco — y una divisoria vertical sutil marca el cambio de
año, detectada genéricamente (comparando el año de cada fila contra el de la
anterior), no hardcodeada a un año en concreto.

**Lo que se lee en el ejemplo de Contoso.** Diciembre 2024 cerró en $808K,
un **+7,9% interanual** contra diciembre 2023 — visible de un vistazo por la
separación entre la línea sólida y la punteada en el último tramo.

## Los tres campos, en este orden

**El orden importa: Deneb mapea los roles por posición.**

| # | Campo | Tipo | Qué es |
|---|---|---|---|
| 1 | `YearMonth` | columna, texto | Periodo del eje X. Formato `YYYY-MM` |
| 2 | `Total Sales` | medida, numérico | El importe del periodo: línea sólida + área |
| 3 | `Sales PY` | medida, numérico | El mismo mes, año anterior: línea punteada |

Sobre un modelo real, `Sales PY` suele ser:

```dax
Sales PY = CALCULATE([Total Sales], SAMEPERIODLASTYEAR(DimDate[Date]))
```

**Si tu historia no tiene un año anterior completo, quita la línea punteada
antes de publicar** — un comparativo con huecos disfrazados de cero miente
tanto como una barra que no arranca en cero. `SAMEPERIODLASTYEAR` ya deja en
blanco lo que no tiene comparativo; el spec respeta ese blanco (`isValid`),
nunca lo convierte en 0.

## Requisitos

- **El periodo, como texto `YYYY-MM`.** El eje X es nominal a propósito, y el
  `labelExpr` lee los dos últimos caracteres para el mes: con `2024-M1` o
  `202401` hay que revisar `sort` y `labelExpr`.
- Vega-Lite **6.4.1** · Deneb **1.9.0**.

## Detalles del spec que conviene conocer

- **Notación de corchetes para los tokens dentro de expresiones**
  (`datum['__1__']`), nunca de punto. Deneb de-tokeniza `__N__` al nombre real
  del campo para compilar: con notación de punto, un nombre con espacio
  (`Total Sales`) rompe la expresión (`Unexpected identifier`).
- **`ordenReciente` en vez de fecha hardcodeada.** El "último punto" se
  detecta con `row_number` descendente sobre el periodo — la plantilla sigue
  funcionando si la importas con un rango de fechas distinto.
- **La etiqueta del último punto va DEBAJO del punto, no encima.** `align:
  "right"` ancla el borde derecho del texto en el punto, así que un texto
  largo se extiende hacia la izquierda — si el offset vertical es negativo,
  esa franja cae sobre el tramo de línea anterior al punto. Con offset
  positivo cae en el hueco vacío bajo el punto.

## Contenido

| | |
|---|---|
| `linea-elegante-interanual.json` | La plantilla para importar en Deneb |
| `pbip/` | El informe en texto, contra el modelo Contoso Retail |
| `Linea_Elegante_Interanual.zip` | Todo lo anterior, empaquetado |

## Licencia

MIT. Autor: Cristobal Salcedo Beltrán.
