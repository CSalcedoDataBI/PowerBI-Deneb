# Tarjetas bullet IBCS — Real · Objetivo · Año anterior

Un muro de tarjetas KPI en **Vega puro** para Deneb. Cada tarjeta lleva dentro un *bullet chart*
al estilo **IBCS**: la calle gruesa es el valor real (AC), la calle fina de abajo es el año
anterior (PY) y el tick negro vertical es el objetivo (PL). A la derecha, el valor y la variación;
a la izquierda, el cumplimiento del objetivo con su semáforo.

Clic en una tarjeta para **filtrar el resto del informe**.

Ficha y vista previa en vivo: <https://csalcedodatabi.com/deneb/tarjetas-bullet-ibcs>

---

## Qué trae el paquete

```
Tarjetas_Bullet_IBCS/
├── pbip/                        el informe en texto (PBIP) + el modelo semántico
├── tarjetas-bullet-ibcs.json    el spec suelto, para copiar y pegar en Deneb
└── Tarjetas_Bullet_IBCS.zip     todo lo anterior
```

El `.pbip` abre directamente por la página **«Tarjeta bullet IBCS»**.

## Cómo lo conecto a mis datos

Cuatro campos, y **el orden importa** — Deneb mapea los roles del dataset por posición:

| # | Rol | En el ejemplo | Qué dibuja |
|---|---|---|---|
| 1 | Categoría (columna) | `DimProduct[SubCategoryName]` | una tarjeta por valor |
| 2 | Real — AC (medida) | `[Total Sales]` | la calle gruesa y el número grande |
| 3 | Objetivo — PL (medida) | `[Sales Target]` | el tick negro vertical |
| 4 | Año anterior — PY (medida) | `[Sales PY]` | la calle fina de abajo |

Si no tienes objetivo, **borra la marca `objetivo`** del spec en lugar de inventar uno.

### Ajustes rápidos

| Quiero… | Toca esto |
|---|---|
| Más o menos tarjetas | el control **Top N** (señal `topN`, 3–12) |
| Otro umbral de semáforo | la fórmula `tono` en la fuente de datos `kpi` (`>= 1` y `>= 0.97`) |
| Otro formato de número | las llamadas a `pbiFormat(..., '#,0,,.00M')` en las marcas `valor` y `cabeceraValor` |
| Más ancho para las etiquetas | la señal `labelW` |

## Sobre el objetivo del ejemplo — dicho de frente

El modelo Contoso **no trae presupuesto**. El objetivo de este ejemplo es una medida declarada:

```dax
Sales Target = [Sales PY] * 1.1
```

Es decir, «año anterior +10 %». No es una medición: es un plan inventado *y declarado como tal*,
para que el tick tenga algo que enseñar. Sustitúyelo por tu presupuesto real antes de usar la
plantilla en producción.

## Los datos del ejemplo

Contoso Retail, `[Total Sales]` por subcategoría, 2024 contra 2023 (Top 6 por ventas de 2024):

| Subcategoría | 2024 | 2023 | Δ | % del objetivo |
|---|---|---|---|---|
| Juguetes e Infantil | 1.179.650 | 1.039.104 | +13,5 % | 103,2 % |
| Consolas de Videojuegos | 1.056.227 | 958.190 | +10,2 % | 100,2 % |
| Computadoras | 1.041.818 | 952.742 | +9,3 % | 99,4 % |
| Audio | 917.925 | 875.778 | +4,8 % | 95,3 % |
| Hogar Inteligente | 852.991 | 826.653 | +3,2 % | 93,8 % |
| Películas y Series (Físico) | 824.943 | 776.682 | +6,2 % | 96,6 % |

Datos de origen: [`SampleDataSets/contoso-retail`](https://github.com/CSalcedoDataBI/SampleDataSets)
(MIT). Son las mismas cifras que enseña la vista previa de la galería, no una imitación.

## Requisitos

- Power BI Desktop con **PBIP** habilitado (*Vista previa*)
- Visual **Deneb** ≥ 1.9 · proveedor **Vega** 5.30

---

Autor: Cristobal Salcedo Beltrán — [csalcedodatabi.com](https://csalcedodatabi.com)
