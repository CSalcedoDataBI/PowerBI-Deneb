# Grupos de cálculo: su formato en Deneb

Cada elemento de un grupo de cálculo puede traer **su propia cadena de formato**, y Deneb la
recibe resuelta fila a fila. La misma medida se lee en miles en una fila y en porcentaje en la
siguiente, sin escribir una sola regla dentro del gráfico.

Acompaña al artículo [Grupos de cálculo en Power BI: su formato en
Deneb](https://csalcedodatabi.com/blog/grupos-calculo-formato-deneb/).

## Qué hay aquí

| Archivo | Qué es |
|---|---|
| [`Files/grupos-calculo-formato-deneb.zip`](Files/grupos-calculo-formato-deneb.zip) | Proyecto de Power BI (**PBIP**) con **cuatro escenarios** |
| [`Files/grupos-de-calculo.vega.json`](Files/grupos-de-calculo.vega.json) | El spec de Deneb suelto, para leerlo o copiarlo sin abrir Power BI |

## Los cuatro escenarios del archivo

Este es el más completo de la serie: trae **tres grupos de cálculo** en el modelo y una página por
caso.

| Página | Grupo | Qué demuestra |
|---|---|---|
| 1 · Un formato por elemento | `Formato` | El elemento impone su formato sobre el de la medida |
| 2 · Herencia del formato | `Herencia` | `SELECTEDMEASUREFORMATSTRING()` respeta el formato de cada medida |
| 3 · Cruzado con fechas | `Formato` | El formato se resuelve por celda, no por columna |
| 4 · Comparativa interanual | `TimeIntel` | Cuatro elementos y **solo** `Diferencia %` cambia el formato |

El cuarto replica el caso de [deneb-viz/deneb#522](https://github.com/deneb-viz/deneb/issues/522)
sobre Contoso.

## Dos cosas que cuestan tiempo si no se saben

1. **El modelo debe exigir medidas explícitas.** Los grupos de cálculo no se aplican nunca a una
   medida implícita, así que sin esa propiedad no pasa nada y parece que falla Deneb. En este
   archivo ya viene puesta.
2. **Al abrirlo, Power BI pedirá procesar los grupos de cálculo.** Es esperable: la caché del
   modelo es anterior a ellos. Se resuelve con *Actualizar ahora*.

## Cómo abrir el proyecto

Es un **PBIP**, no un `.pbix`: descomprime el `.zip` y abre el archivo `.pbip`. Necesitas Power BI
Desktop actualizado.

## Los datos

El modelo es [Contoso Retail](https://github.com/CSalcedoDataBI/SampleDataSets/tree/main/contoso-retail),
público y reproducible. El `.zip` no incluye la caché de datos: al abrirlo, refresca.

## Contacto

- **Correo:** [contacto@csalcedodatabi.com](mailto:contacto@csalcedodatabi.com)
- **LinkedIn:** [Cristobal Salcedo](https://www.linkedin.com/in/cristobal-salcedo)
- **Galería completa:** [csalcedodatabi.com/deneb](https://csalcedodatabi.com/deneb)

## Licencia

MIT — puedes usar, copiar y adaptar esta plantilla citando la autoría.
