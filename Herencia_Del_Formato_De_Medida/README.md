# Heredar el formato de la medida

Un elemento de cálculo con **formato fijo** se lo impone a todas las medidas que toque, aunque no
compartan unidad: un importe pierde su símbolo de moneda y un porcentaje acaba mostrándose como
`0.0 K`. `SELECTEDMEASUREFORMATSTRING()` hace que cada medida conserve el suyo.

Acompaña al artículo [Heredar el formato de la medida en Power BI con
Deneb](https://csalcedodatabi.com/blog/heredar-formato-medida-deneb/).

## Qué hay aquí

| Archivo | Qué es |
|---|---|
| [`Files/heredar-formato-medida-deneb.zip`](Files/heredar-formato-medida-deneb.zip) | Proyecto de Power BI (**PBIP**) con el escenario montado |
| [`Files/herencia-del-formato.vega.json`](Files/herencia-del-formato.vega.json) | El spec de Deneb suelto, para leerlo o copiarlo sin abrir Power BI |

## La diferencia, en dos líneas

```dax
calculationItem 'Miles (formato fijo)' = DIVIDE( SELECTEDMEASURE(), 1000 )
    formatStringDefinition = "#,0.0 ""K"""

calculationItem 'Miles (formato heredado)' = DIVIDE( SELECTEDMEASURE(), 1000 )
    formatStringDefinition = SELECTEDMEASUREFORMATSTRING() & " ""K"""
```

Lo que recibe Deneb para cada medida:

| Elemento | Ventas | Unidades | Margen % |
|---|---|---|---|
| Original | `\$#,0` | `#,0` | `0.0%` |
| Miles (formato **fijo**) | `#,0.0 "K"` | `#,0.0 "K"` | `#,0.0 "K"` |
| Miles (formato **heredado**) | `\$#,0 "K"` | `#,0 "K"` | `0.0% "K"` |

En la fila del formato fijo **las tres cadenas son idénticas**: el elemento las aplasta al mismo
molde.

> **Heredar conserva el formato, no arregla la lógica.** Dividir un porcentaje entre mil sigue sin
> tener sentido, se formatee como se formatee. Si un elemento no debe aplicarse a ciertas medidas,
> eso se resuelve en el propio DAX.

## Cómo abrir el proyecto

Es un **PBIP**, no un `.pbix`: descomprime el `.zip` y abre el archivo `.pbip`. Necesitas Power BI
Desktop actualizado. Al abrirlo, Power BI pedirá procesar el grupo de cálculo — es esperable.

## Los datos

El modelo es [Contoso Retail](https://github.com/CSalcedoDataBI/SampleDataSets/tree/main/contoso-retail),
público y reproducible. El `.zip` no incluye la caché de datos: al abrirlo, refresca.

## Contacto

- **Correo:** [contacto@csalcedodatabi.com](mailto:contacto@csalcedodatabi.com)
- **LinkedIn:** [Cristobal Salcedo](https://www.linkedin.com/in/cristobal-salcedo)
- **Galería completa:** [csalcedodatabi.com/deneb](https://csalcedodatabi.com/deneb)

## Licencia

MIT — puedes usar, copiar y adaptar esta plantilla citando la autoría.
