# Gráfico de Dispersión con Filtrado Cruzado en Power BI usando Deneb y Vega

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro gráfico de dispersión con filtrado cruzado.

## Características

### Filtrado Cruzado y Resaltado

![GIF de Filtrado Cruzado y Resaltado](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/57b0678961104a11282e45bba0c2a8580a2a6d44/Dispersi%C3%B3n_Etiquetados/Files/Dispersi%C3%B3n_Etiquetada.gif)

Experimenta capacidades de filtrado cruzado y resaltado sin fisuras, que permiten un análisis intuitivo de conjuntos de datos complejos. Simplemente seleccionando un punto de datos, puedes ver instantáneamente la información relacionada resaltada en otros visuales. :mag:

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/57b0678961104a11282e45bba0c2a8580a2a6d44/Dispersi%C3%B3n_Etiquetados/Files/Ver%20Editor%20de%20Deneb.gif)

Sumérgete en el editor de Deneb en Power BI y explora las diferentes capas de código. Cada capa corresponde a una pieza del rompecabezas visual, incluyendo datos, escalas, ejes y marcas como se describe en la plantilla Vega que proporcionamos.

Cómo Usar
Para usar este visual en tus informes de Power BI, sigue estos pasos:

### Descarga el archivo .pbix desde este enlace

Abre el archivo en Power BI.
Navega al panel 'Visualizaciones' y selecciona el visual personalizado de Deneb.
Carga tus datos y vincula los campos de acuerdo con la plantilla proporcionada.  [file_folder](https://github.com/cristobalsalcedo90/PowerBI-Deneb/raw/main/Dispersi%C3%B3n_Etiquetados/Files/Dispersi%C3%B3n_Etiquetada.pbix)

### Contribuir

¡Tus contribuciones son bienvenidas! Si tienes sugerencias o mejoras, no dudes en hacer fork de este repositorio y enviar tus pull requests. Para cambios importantes, por favor abre un issue primero para discutir lo que te gustaría cambiar. :handshake:

### Licencia

Este proyecto está licenciado bajo la Licencia MIT - mira el archivo LICENSE.md para más detalles.

### Contacto

Si tienes alguna consulta o necesitas más información, no dudes en contactarnos en <csalcedo90@email.com>.

### La Plantilla

```json
{
  "$schema": "https://vega.github.io/schema/vega/v5.json",
  "usermeta": {
    "deneb": {
      "build": "1.6.2.1",
      "metaVersion": 1,
      "provider": "vega",
      "providerVersion": "5.26.1"
    },
    "interactivity": {
      "tooltip": true,
      "contextMenu": true,
      "selection": true,
      "highlight": true,
      "dataPointLimit": 50
    },
    "information": {
      "name": "Diagrama de dispersión etiquetado",
      "description": "Diagrama de dispersión etiquetado",
      "author": "Cristobal Salcedo Beltran, Email address: csalcedo90@gmail.com",
      "uuid": "7d85ecb7-3084-43d3-95ce-36def5c165f3",
      "generated": "2024-04-11T03:08:54.210Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Categoría de Datos",
        "description": "Esta categoría agrupa los datos según un criterio específico, facilitando su comparación visual en el diagrama de dispersión.",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "Categoría de Color",
        "description": "Define el color de los puntos en el gráfico, permitiendo distinguir visualmente diferentes grupos o categorías dentro de los datos.",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__2__",
        "name": "Valor para Eje Y",
        "description": "Representa la variable dependiente en el gráfico. Cada punto en el eje Y corresponde a un valor de esta medida, permitiendo análisis de tendencias o comparaciones.",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__3__",
        "name": "Valor para Eje X",
        "description": "Representa la variable independiente. Los puntos en el eje X se utilizan para observar cómo cambia la variable representada en el eje Y en relación a los cambios en esta medida.",
        "type": "numeric",
        "kind": "measure"
      }
    ]
  },
  "config": {},
  "description": "A labeled scatter plot or films showing rotten Tomatoes rarigs versus IMDB ratings, Author : Cristobal Salcedo Beltran, Email address: csalcedo90@gmail.com, Fuente de inspirirado: https://vega.github.io/vega/examples/loess-regression/",
  "padding": 5,
  "width": 800,
  "height": 400,
  "autosize": "pad",
  "data": [
    {
      "name": "dataset",
      "transform": [
        {
          "type": "filter",
          "expr": "datum['__3__'] != null && datum['__2__'] != null "
        }
      ]
    },
    {
      "name": "fit",
      "source": "dataset",
      "transform": [
        {
          "type": "regression",
          "method": "quad",
          "x": "__3__",
          "y": "__2__",
          "as": [
            "u",
            "v"
          ]
        }
      ]
    }
  ],
  "scales": [
    {
      "name": "x",
      "type": "linear",
      "domain": {
        "data": "dataset",
        "field": "__3__"
      },
      "range": "width"
    },
    {
      "name": "y",
      "type": "linear",
      "domain": {
        "data": "dataset",
        "field": "__2__"
      },
      "range": "height"
    },
    {
      "name": "color",
      "type": "ordinal",
      "domain": {
        "data": "dataset",
        "field": "__1__",
        "sort": {
          "order": "descending"
        }
      },
      "range": "category"
    }
  ],
  "axes": [
    {
      "orient": "left",
      "scale": "y",
      "title": "Medida para el eje Y"
    },
    {
      "orient": "bottom",
      "scale": "x",
      "title": "Medida para el eje X"
    }
  ],
  "marks": [
    {
      "name": "points",
      "type": "symbol",
      "from": {
        "data": "dataset"
      },
      "encode": {
        "enter": {
          "fill": {
            "scale": "color",
            "field": "__1__"
          },
          "x": {
            "scale": "x",
            "field": "__3__"
          },
          "y": {
            "scale": "y",
            "field": "__2__"
          },
          "size": {
            "value": 200
          },
          "opacity": [
            {
              "test": "datum.__selected__ == 'on'",
              "value": 1
            },
            {
              "test": "datum.__selected__ == 'off' || datum['__2____highlight']==null",
              "value": 0.1
            },
            {
              "test": "datum.__selected__ == 'neutral'",
              "value": 1
            }
          ]
        }
      }
    },
    {
      "name": "trend",
      "type": "line",
      "from": {
        "data": "fit"
      },
      "encode": {
        "enter": {
          "x": {
            "scale": "x",
            "field": "u"
          },
          "y": {
            "scale": "y",
            "field": "v"
          },
          "stroke": {
            "value": "firebrick"
          }
        }
      }
    },
    {
      "type": "text",
      "from": {
        "data": "points"
      },
      "encode": {
        "enter": {
          "text": {
            "field": "datum['__0__']"
          },
          "fontSize": {
            "value": 12
          }
        }
      },
      "transform": [
        {
          "type": "label",
          "avoidMarks": [
            "points"
          ],
          "anchor": [
            "top",
            "bottom",
            "right",
            "left"
          ],
          "offset": [
            1
          ],
          "size": {
            "signal": "[width + 60, height + 1 ]"
          }
        }
      ]
    }
  ]
}
```

© 2024 Cristobal Salcedo. Todos los derechos reservados. Impulsado por la creatividad y el café. :coffee:👍☕️
