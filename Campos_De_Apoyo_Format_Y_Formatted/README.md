# Campos de apoyo `__format` y `__formatted`

Cuando una medida de Power BI tiene formato dinámico, **Deneb añade dos columnas al conjunto de
datos que tú no proyectaste**: la cadena de formato de esa fila y el valor ya escrito con ella.
No hay que calcular el formato dentro del gráfico.

Acompaña al artículo [Formato de medidas en Power BI: `__format` en
Deneb](https://csalcedodatabi.com/blog/formato-medidas-format-deneb/).

## Qué hay aquí

| Archivo | Qué es |
|---|---|
| [`Files/formato-medidas-format-deneb.zip`](Files/formato-medidas-format-deneb.zip) | Proyecto de Power BI (**PBIP**) con el escenario montado |
| [`Files/campos-de-apoyo.vega.json`](Files/campos-de-apoyo.vega.json) | El spec de Deneb suelto, para leerlo o copiarlo sin abrir Power BI |

## Cómo abrir el proyecto

Es un **PBIP**, no un `.pbix`: descomprime el `.zip` y abre el archivo `.pbip`. Necesitas Power BI
Desktop actualizado. La ventaja de este formato es que el modelo y el spec son **texto legible** —
puedes leer el TMDL y el JSON sin abrir nada.

Al abrirlo verás dos páginas: la portada y **Campos de apoyo `__format` y `__formatted`**, que es
el escenario del artículo.

## Los datos

El modelo es [Contoso Retail](https://github.com/CSalcedoDataBI/SampleDataSets/tree/main/contoso-retail),
público y reproducible. El `.zip` no incluye la caché de datos: al abrirlo, refresca.

## La idea en una línea

```json
"text": { "field": "Ventas__formatted", "type": "nominal" }
```

Dos guiones bajos delante del sufijo, y el nombre exacto de la medida. Es el error más común y no
avisa: el campo llega vacío y parece que la función no existe.

## Contacto

- **Correo:** [contacto@csalcedodatabi.com](mailto:contacto@csalcedodatabi.com)
- **LinkedIn:** [Cristobal Salcedo](https://www.linkedin.com/in/cristobal-salcedo)
- **Galería completa:** [csalcedodatabi.com/deneb](https://csalcedodatabi.com/deneb)

## Licencia

MIT — puedes usar, copiar y adaptar esta plantilla citando la autoría.
