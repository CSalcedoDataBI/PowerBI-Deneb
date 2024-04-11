# Selected Method Regression (ScatterPlot) Power BI usando Deneb y Vega

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro gráfico de dispersión con selección dinamica del metodo de regresión.

## Características

### Selected Method Regression

![Selected Method Regression](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/068e5deccdbe4fc4af8ff6a86775b9ea47248cdd/Dispersi%C3%B3n_Regresi%C3%B3n/Files/ScatterPlot_Regression_SelectedMethod.gif)

Experimenta capacidades de filtrado cruzado y resaltado sin fisuras, que permiten un análisis intuitivo de conjuntos de datos complejos. Simplemente seleccionando un punto de datos, puedes ver instantáneamente la información relacionada resaltada en otros visuales. :mag:

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/068e5deccdbe4fc4af8ff6a86775b9ea47248cdd/Dispersi%C3%B3n_Regresi%C3%B3n/Files/Editor%20de%20Deneb.gif)

Sumérgete en el editor de Deneb en Power BI y explora las diferentes capas de código. Cada capa corresponde a una pieza del rompecabezas visual, incluyendo datos, escalas, ejes y marcas como se describe en la plantilla Vega que proporcionamos.

Cómo Usar
Para usar este visual en tus informes de Power BI, sigue estos pasos:

### Descarga el archivo .pbix desde este enlace

Abre el archivo en Power BI.
Navega al panel 'Visualizaciones' y selecciona el visual personalizado de Deneb.
Carga tus datos y vincula los campos de acuerdo con la plantilla proporcionada.  [file_folder](https://github.com/cristobalsalcedo90/PowerBI-Deneb/raw/main/Dispersi%C3%B3n_Regresi%C3%B3n/Files/ScatterPlot_Regression_SelectedMethod.pbix)

### Contribuir

¡Tus contribuciones son bienvenidas! Si tienes sugerencias o mejoras, no dudes en hacer fork de este repositorio y enviar tus pull requests. Para cambios importantes, por favor abre un issue primero para discutir lo que te gustaría cambiar. :handshake:

### Licencia

Este proyecto está licenciado bajo la Licencia MIT - mira el archivo LICENSE.md para más detalles.

### Contacto :telephone_receiver:

Para cualquier consulta, colaboración o simplemente para saludar, puedes contactarme a través de las siguientes plataformas:

- **LinkedIn**: Visita mi perfil para conectar profesionalmente. Estoy siempre abierto a nuevas oportunidades y colaboraciones.

  [![LinkedIn](https://img.shields.io/badge/LinkedIn-Cristobal%20Salcedo-blue)](https://www.linkedin.com/in/cristobal-salcedo)

- **Correo Electrónico**: Si prefieres comunicarte directamente, no dudes en enviarme un email y te responderé a la brevedad posible.

  :e-mail: <csalcedo90@email.com>

Espero tener noticias tuyas pronto. ¡Gracias por tu interés en mi trabajo!

### La Plantilla

```json
{
  "$schema": "https://vega.github.io/schema/vega/v5.json",
  "usermeta": {
    "deneb": {
      "build": "1.5.1.0",
      "metaVersion": 1,
      "provider": "vega",
      "providerVersion": "5.23.0"
    },
    "interactivity": {
      "tooltip": true,
      "contextMenu": true,
      "selection": true,
      "highlight": true,
      "dataPointLimit": 50
    },
    "information": {
      "name": "Selected Method Regression (ScatterPlot)",
      "description": "Selected Method Regression (ScatterPlot)",
      "author": "Cristobal-Salcedo",
      "uuid": "b4d72b67-65bf-4fcc-8479-c3c021d851e8",
      "generated": "2023-06-10T06:06:14.885Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Major Genre",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "Title",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__2__",
        "name": "IMDB Rating",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__3__",
        "name": "Rotten Tomatoes Rating",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__4__",
        "name": "PolyValue",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__5__",
        "name": "MethodSelected",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__6__",
        "name": "GroupbySelected",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      }
    ]
  },
  "config": {
    "autosize": {
      "contains": "padding",
      "type": "fit"
    },
    "view": {"stroke": "transparent"},
    "font": "Segoe UI",
    "arc": {},
    "area": {
      "line": true,
      "opacity": 0.6
    },
    "bar": {},
    "line": {
      "strokeWidth": 3,
      "strokeCap": "round",
      "strokeJoin": "round"
    },
    "path": {},
    "point": {
      "filled": true,
      "size": 75
    },
    "rect": {},
    "shape": {},
    "symbol": {
      "strokeWidth": 1.5,
      "size": 50
    },
    "text": {
      "font": "Segoe UI",
      "fontSize": 12,
      "fill": "#605E5C"
    },
    "axis": {
      "ticks": true,
      "grid": true,
      "domain": true,
      "labelColor": "#605E5C",
      "labelFontSize": 12,
      "titleFont": "wf_standard-font, helvetica, arial, sans-serif",
      "titleColor": "#252423",
      "titleFontSize": 16,
      "titleFontWeight": "normal"
    },
    "axisQuantitative": {
      "tickCount": 3,
      "grid": true,
      "gridColor": "#C8C6C4",
      "gridDash": [1, 5],
      "labelFlush": false
    },
    "axisX": {"labelPadding": 5},
    "axisY": {"labelPadding": 10},
    "header": {
      "titleFont": "wf_standard-font, helvetica, arial, sans-serif",
      "titleFontSize": 16,
      "titleColor": "#252423",
      "labelFont": "Segoe UI",
      "labelFontSize": 13.333333333333332,
      "labelColor": "#605E5C"
    },
    "legend": {
      "titleFont": "Segoe UI",
      "titleFontWeight": "bold",
      "titleColor": "#605E5C",
      "labelFont": "Segoe UI",
      "labelFontSize": 13.333333333333332,
      "labelColor": "#605E5C",
      "symbolType": "circle",
      "symbolSize": 75
    }
  },
  "description": "A labeled scatter plot or films showing rotten Tomatoes rarigs versus IMDB ratings,",
  "padding": 5,
  "width": 800,
  "height": 480,
  "autosize": "pad",
  "signals": [
    {
      "name": "methodValue",
      "update": "pluck(data('dataset'),'__5__')[0]"
    },
    {
      "name": "methodSelect",
      "update": "methodValue === 1 ? 'linear': methodValue === 2 ? 'log': methodValue === 3 ? 'exp': methodValue === 4 ? 'pow': methodValue === 5 ? 'quad': 'poly'"
    },
    {
      "name": "currentMethod",
      "update": "methodValue === 1 ? '(linear): y = a + b * x': methodValue === 2 ? '(log): y = a + b * log(x)': methodValue === 3 ? '(exp): y = a + eb * x': methodValue === 4 ? '(pow): y = a * xb': methodValue === 5 ? '(quad): y = a + b * x + c * x2': '(poly): y = a + b * x + … + k * xorder'"
    },
    {
      "name": "polyOrder",
      "update": "pluck(data('dataset'),'__4__')[0]"
    },
    {
      "name": "groupbySelected",
      "update": "pluck(data('dataset'),'__6__')[0]"
    },
    {
      "name": "groupby",
      "update": "groupbySelected === 1 ? 'none' : 'genre' "
    }
  ],
  "data": [
    {
      "name": "dataset",
      "transform": [
        {
          "type": "filter",
          "expr": "datum['__3__'] != null && datum['__2__'] != null && datum['__0__'] != null "
        }
      ]
    },
    {
      "name": "trend",
      "source": "dataset",
      "transform": [
        {
          "type": "regression",
          "groupby": [
            {
              "signal": "groupby === 'genre' ? '__0__' : 'foo'"
            }
          ],
          "method": {
            "signal": "methodSelect"
          },
          "order": {
            "signal": "polyOrder"
          },
          "extent": {
            "signal": "domain('x')"
          },
          "x": "__3__",
          "y": "__2__",
          "as": ["u", "v"]
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
        "field": "__0__",
        "sort": {"order": "descending"}
      },
      "range": "category"
    }
  ],
  "axes": [
    {
      "orient": "left",
      "scale": "y",
      "title": "__2__"
    },
    {
      "orient": "bottom",
      "scale": "x",
      "title": "__3__"
    }
  ],
  "marks": [
    {
      "type": "text",
      "encode": {
        "update": {
          "text": {
            "signal": "currentMethod"
          },
          "x": {"value": 200},
          "y": {"value": 450},
          "fill": {"value": "grey"},
          "fillOpacity": {
            "value": 0.25
          },
          "fontSize": {"value": 40}
        }
      }
    },
    {
      "name": "points",
      "type": "symbol",
      "from": {"data": "dataset"},
      "encode": {
        "enter": {
          "fill": {
            "scale": "color",
            "field": "__0__"
          },
          "x": {
            "scale": "x",
            "field": "__3__"
          },
          "y": {
            "scale": "y",
            "field": "__2__"
          },
          "size": {"value": 80},
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
      "type": "group",
      "from": {
        "facet": {
          "data": "trend",
          "name": "curve",
          "groupby": "__0__"
        }
      },
      "marks": [
        {
          "type": "line",
          "from": {"data": "curve"},
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
        }
      ]
    },
    {
      "type": "text",
      "from": {"data": "points"},
      "encode": {
        "enter": {
          "text": {
            "field": "datum['__1__']"
          },
          "fontSize": {"value": 12}
        }
      },
      "transform": [
        {
          "type": "label",
          "avoidMarks": ["points"],
          "anchor": [
            "top",
            "bottom",
            "right",
            "left"
          ],
          "offset": [1],
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
