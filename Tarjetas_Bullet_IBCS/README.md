# Tarjetas bullet IBCS — Real · Objetivo · Año anterior

Un muro de tarjetas KPI en **Vega puro** para Deneb. Cada tarjeta lleva dentro un *bullet chart*
al estilo **IBCS**: la calle gruesa es el valor real (AC), la calle fina de abajo es el año
anterior (PY) y el tick negro vertical es el objetivo (PL). A la derecha, el valor y la variación;
a la izquierda, el cumplimiento del objetivo con su semáforo.

Clic en una tarjeta para **filtrar el resto del informe**.

Ficha y vista previa en vivo: <https://csalcedodatabi.com/deneb/tarjetas-bullet-ibcs>

---

## Abre y pinta — sin refrescar nada

El informe trae **datos simulados dentro del propio modelo**: una tabla `Datos` con seis filas
escritas en línea (`#table` de Power Query). No hay orígenes externos, ni credenciales, ni refresco
contra internet — el modelo se procesa en local al abrir. Descomprimes, abres
`TarjetasBulletIBCS.pbip` en Power BI Desktop y el visual está en la página **«Tarjeta bullet IBCS»**.

```
Tarjetas_Bullet_IBCS/
├── pbip/                        el informe + su modelo, en texto
├── tarjetas-bullet-ibcs.json    el spec suelto, para copiar y pegar en Deneb
└── Tarjetas_Bullet_IBCS.zip     todo lo anterior
```

## Cómo lo conecto a MIS datos

Sustituye la tabla `Datos` por tu modelo y vuelve a arrastrar cuatro campos. **El orden importa** —
Deneb mapea los roles del dataset por posición:

| # | Rol | En el ejemplo | Qué dibuja |
|---|---|---|---|
| 1 | Categoría (columna) | `Datos[Categoría]` | una tarjeta por valor |
| 2 | Real — AC (medida) | `[Real]` | la calle gruesa y el número grande |
| 3 | Objetivo — PL (medida) | `[Objetivo]` | el tick negro vertical |
| 4 | Año anterior — PY (medida) | `[Año anterior]` | la calle fina de abajo |

Sobre un modelo real esas tres medidas suelen ser algo así:

```dax
Real         = [Total Sales]
Año anterior = CALCULATE([Total Sales], SAMEPERIODLASTYEAR(DimDate[Date]))
Objetivo     = SUM(Presupuesto[Importe])   -- tu presupuesto de verdad
```

Si **no tienes objetivo**, borra la marca `objetivo` del spec en lugar de inventar uno.

### Ajustes rápidos

| Quiero… | Toca esto |
|---|---|
| Más o menos tarjetas | el control **Top N** (señal `topN`, 3–12) |
| Otro umbral de semáforo | la fórmula `tono` en la fuente de datos `kpi` (`>= 1` y `>= 0.97`) |
| Otro formato de número | las llamadas a `pbiFormat(..., '#,0,,.00M')` en las marcas `valor` y `cabeceraValor` |
| Más ancho para las etiquetas | la señal `labelW` |

## Los números del ejemplo, y de dónde salen

No son aleatorios: son las cifras reales de **Contoso Retail** — `[Total Sales]` por subcategoría,
2024 contra 2023, Top 6 por ventas de 2024 — materializadas en la tabla calculada para que el
informe sea autónomo. Origen:
[`SampleDataSets/contoso-retail`](https://github.com/CSalcedoDataBI/SampleDataSets) (MIT).

| Subcategoría | 2024 | 2023 | Δ | % del objetivo |
|---|---|---|---|---|
| Juguetes e Infantil | 1.179.650 | 1.039.104 | +13,5 % | 103,2 % |
| Consolas de Videojuegos | 1.056.227 | 958.190 | +10,2 % | 100,2 % |
| Computadoras | 1.041.818 | 952.742 | +9,3 % | 99,4 % |
| Audio | 917.925 | 875.778 | +4,8 % | 95,3 % |
| Hogar Inteligente | 852.991 | 826.653 | +3,2 % | 93,8 % |
| Películas y Series (Físico) | 824.943 | 776.682 | +6,2 % | 96,6 % |

Son las mismas que enseña la vista previa de la galería, no una imitación.

### El objetivo es un plan declarado — dicho de frente

Contoso **no trae presupuesto**. El objetivo del ejemplo es «año anterior +10 %», y se dice aquí,
en la ficha y en la descripción de la propia columna dentro del modelo. No es lo mismo que
inventarlo en silencio: un tick de objetivo sin origen convierte un gráfico honesto en uno que
miente con estilo.

## Requisitos

- Power BI Desktop con **PBIP** habilitado (*Archivo → Opciones → Características de vista previa*)
- Visual **Deneb** ≥ 1.9 · proveedor **Vega** 5.30

---

Autor: Cristobal Salcedo Beltrán — [csalcedodatabi.com](https://csalcedodatabi.com)
