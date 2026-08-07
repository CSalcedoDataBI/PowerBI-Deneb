# Ranking en el tiempo (bump chart)

Una línea por categoría; su **altura es el puesto** que ocupa en cada periodo,
1º arriba. Sirve cuando importa el **orden** —quién adelanta a quién— y no la
magnitud.

Ficha con vista previa en vivo:
<https://csalcedodatabi.com/deneb/ranking-bump-chart>

![Vista previa](https://csalcedodatabi.com/deneb/previews/ranking-bump-chart.webp)

## Lo que tiene de particular

**El puesto no viene del modelo.** Lo calcula el propio spec con un
`window rank` agrupado por periodo. Cambiar la medida que ordena —de ventas a
margen, a unidades— no exige tocar el modelo semántico: se cambia el campo del
tercer rol y ya.

**No lleva leyenda.** La etiqueta al final de cada línea nombra su serie, así la
vista no salta entre un color y un rótulo lejano. Sale de filtrar
`datum.pasoFinal === 1`, un `row_number` por categoría ordenado por periodo
descendente.

**El cursor atrapa la línea.** Una línea de 3 px es casi imposible de señalar con
el ratón, así que hay una capa gemela de `strokeWidth: 22` con `opacity: 0` que
recibe el `pointerover`. Al resaltar una serie, las demás bajan a 0,16.

## Qué necesita (3 campos, en este orden)

| Rol | Tipo | En el ejemplo |
|-----|------|---------------|
| `__0__` Categoría | texto | `DimProduct[CategoryName]` |
| `__1__` Periodo | fecha | `DimDate[YearMonth]` |
| `__2__` Valor | medida | `[Total Sales]` |

El orden importa: Deneb mapea los roles por posición.

**Un periodo = una fila por categoría.** El `rank` compara filas dentro de cada
periodo, así que el campo de periodo debe venir ya al grano que quieres ver. Por
eso el ejemplo enlaza `DimDate[YearMonth]` ("2024-01") y no `DimDate[Date]`: con
fechas diarias tendrías ~30 filas por categoría y mes, y el ranking dejaría de
significar nada.

## Perilla que quizá tengas que mover

El eje X está fijado a ticks **mensuales**:

```json
"tickCount": { "interval": "month", "step": 1 }
```

Con datos trimestrales o anuales, cámbialo (`quarter`, `year`). Es deliberado
que se vea en el spec y no que se decida solo: sin fijar el intervalo, Vega
dibujaba 15 etiquetas para 8 periodos, con meses repetidos.

La escala es `"type": "utc"` a propósito. Con la escala temporal por defecto,
`2025-01-01` se pinta en hora local y en un huso negativo la etiqueta sale como
diciembre.

## Contenido

```
pbip/                      Proyecto Power BI en texto (modelo Contoso Retail + la página del visual)
ranking-bump-chart.json    El spec suelto, para pegarlo en Deneb sin descargar nada
Ranking_Bump_Chart.zip     Todo lo anterior empaquetado
```

El modelo del `pbip/` refresca solo: sus particiones leen parquet público desde
`github.com/CSalcedoDataBI/SampleDataSets`, sin autenticación ni rutas locales.
Necesita Power BI Desktop con `compatibilityLevel` 1606 o superior.

## Licencia

MIT, como el resto del repositorio. Autor: Cristobal Salcedo Beltrán.
