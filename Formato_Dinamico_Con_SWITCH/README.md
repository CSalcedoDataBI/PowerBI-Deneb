# Formato dinámico con SWITCH

Una medida con **formato dinámico** decide su propia cadena de formato según el valor: millones
cuando es grande, miles cuando no. Deneb la recibe **ya resuelta fila a fila**, así que no hay que
repetir esa lógica dentro del gráfico.

Acompaña al artículo [Formato dinámico con SWITCH en Power BI y
Deneb](https://csalcedodatabi.com/blog/formato-dinamico-switch-deneb/).

## Qué hay aquí

| Archivo | Qué es |
|---|---|
| [`Files/formato-dinamico-switch-deneb.zip`](Files/formato-dinamico-switch-deneb.zip) | Proyecto de Power BI (**PBIP**) con el escenario montado |
| [`Files/formato-switch.vega.json`](Files/formato-switch.vega.json) | El spec de Deneb suelto, para leerlo o copiarlo sin abrir Power BI |

## El DAX del ejemplo

```dax
VAR _digitos = IFERROR( LEN( CONVERT( INT( ABS( SELECTEDMEASURE() ) ), STRING ) ), 0 )
VAR _sufijo  = SWITCH( TRUE(),
                   _digitos >= 13, "T",
                   _digitos >= 10, "B",
                   _digitos >= 7,  "M",
                   _digitos >= 4,  "K", "" )
VAR _comas   = REPT( ",", SWITCH( _sufijo, "T",4, "B",3, "M",2, "K",1, 0 ) )
RETURN IF( _digitos >= 2, "$#,#0" & _comas & ".0 " & _sufijo, "$#,##0.00" )
```

**Ojo con los cortes.** La fórmula que circula por ahí usa 12, 9, 6 y 4 dígitos, y con esos
valores un producto de $104.102 sale como `$0.1 M` — peor que el número crudo. Aquí van en
**13, 10, 7 y 4**, que es lo que devuelve `$104.1 K`.

## Cómo abrir el proyecto

Es un **PBIP**, no un `.pbix`: descomprime el `.zip` y abre el archivo `.pbip`. Necesitas Power BI
Desktop actualizado. La ventaja es que el modelo y el spec son texto legible.

## Los datos

El modelo es [Contoso Retail](https://github.com/CSalcedoDataBI/SampleDataSets/tree/main/contoso-retail),
público y reproducible. El `.zip` no incluye la caché de datos: al abrirlo, refresca.

## Contacto

- **Correo:** [contacto@csalcedodatabi.com](mailto:contacto@csalcedodatabi.com)
- **LinkedIn:** [Cristobal Salcedo](https://www.linkedin.com/in/cristobal-salcedo)
- **Galería completa:** [csalcedodatabi.com/deneb](https://csalcedodatabi.com/deneb)

## Licencia

MIT — puedes usar, copiar y adaptar esta plantilla citando la autoría.
