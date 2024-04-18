# Gráfico de Pareto Vertical PowerBI Deneb Vega-Lite

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega-Lite! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro gráfico de Pareto Vertical.

## Características

### Pareto Vertical

![GIF de Pareto Vertical](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/93733fe256c6d2f7f75be6f4b5b7b84d21389db2/Pareto_Verticales/Files/Pareto_Vertical_PowerBI_Deneb_VegaLite_P2.gif)

Experimenta capacidades de filtrado cruzado y resaltado sin fisuras, que permiten un análisis intuitivo de conjuntos de datos complejos. Simplemente seleccionando un punto de datos, puedes ver instantáneamente la información relacionada resaltada en otros visuales. :mag:

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/93733fe256c6d2f7f75be6f4b5b7b84d21389db2/Pareto_Verticales/Files/Editor_Deneb.gif)

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
  "$schema": "https://vega.github.io/schema/vega-lite/v5.json",
  "usermeta": {
    "deneb": {
      "build": "1.5.1.0",
      "metaVersion": 1,
      "provider": "vegaLite",
      "providerVersion": "5.6.1"
    },
    "interactivity": {
      "tooltip": true,
      "contextMenu": true,
      "selection": true,
      "highlight": true,
      "dataPointLimit": 50
    },
    "information": {
      "name": "Diagrama de Pareto Vertical",
      "description": "Diagrama de Pareto Vertical en Power BI con Deneb y Vega Lite (Parte 2 )",
      "author": "Cristobal-Salcedo",
      "uuid": "30b29750-4291-4dec-aba7-59ba83b9e8cb",
      "generated": "2023-06-20T05:01:06.585Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Category",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "Total Ventas",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__2__",
        "name": "ParameterValue",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      }
    ]
  },
  "config": {
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
      "ticks": false,
      "grid": false,
      "domain": false,
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
    "axisX": {
      "labelPadding": 5,
      "labelAngle": 0
    },
    "axisY": {
      "labelPadding": 10,
      "labels": false
    },
    "header": {
      "titleFont": "wf_standard-font, helvetica, arial, sans-serif",
      "titleFontSize": 16,
      "titleColor": "#252423",
      "labelFont": "Segoe UI",
      "labelFontSize": 12,
      "labelColor": "#605E5C"
    },
    "legend": {
      "title": "Principio de Pareto",
      "orient": "top",
      "symbolStrokeWidth": 0,
      "padding": 10,
      "labelFont": "Helvetica Neue, Arial",
      "labelFontSize": 14,
      "labelFontWeight": "normal",
      "labelColor": "#333333",
      "titleFont": "Helvetica Neue, Arial",
      "titleFontSize": 14,
      "titleFontWeight": "normal",
      "titleColor": "#333333",
      "gradientLength": 200,
      "gradientStrokeWidth": 0,
      "gradientHeight": 20,
      "gradientThickness": 10,
      "gradientLabelOffset": 4,
      "gradientLabelFont": "Helvetica Neue, Arial",
      "gradientLabelFontSize": 12,
      "gradientLabelFontWeight": "normal",
      "gradientLabelColor": "#333333"
    }
  },
  "data": {"name": "dataset"},
  "params": [
    {
      "name": "Style",
      "expr": "pluck(data('dataset'),'__2__')[0]"
    },
    {
      "name": "color1",
      "expr": "Style === 1? 'black': Style=== 2? '#080202': '#799351'"
    },
    {
      "name": "color2",
      "expr": "Style ===1? 'gray':Style===2? '#454545': '#F7D060'"
    },
    {
      "name": "color3",
      "expr": "Style ===1? 'red': Style=== 2?'#DDE6ED': '#CD1818'"
    }
  ],
  "transform": [
    {
      "sort": [
        {
          "field": "__1__",
          "order": "descending"
        }
      ],
      "window": [
        {
          "field": "__1__",
          "op": "sum",
          "as": "Total_Ventas_Acumulado"
        }
      ],
      "ignorePeers": true
    },
    {
      "sort": [{"field": "__1__"}],
      "window": [
        {
          "field": "__1__",
          "op": "sum",
          "as": "_GranTotal_Ventas"
        }
      ],
      "frame": [null, null]
    },
    {
      "calculate": "datum.Total_Ventas_Acumulado/datum._GranTotal_Ventas",
      "as": "%_Acumulado"
    },
    {
      "calculate": "datum['__1__']/datum._GranTotal_Ventas",
      "as": "PCT"
    }
  ],
  "layer": [
    {
      "layer": [
        {
          "mark": {
            "type": "bar",
            "opacity": 0.3,
            "tooltip": true
          },
          "encoding": {
            "x": {"field": "__1__"},
            "color": {
              "field": "%_Acumulado",
              "type": "quantitative",
              "scale": {
                "range": [
                  {"expr": "color1"},
                  {"expr": "color2"},
                  {"expr": "color3"}
                ]
              },
              "legend": null
            }
          }
        },
        {
          "mark": {
            "type": "bar",
            "tooltip": true
          },
          "encoding": {
            "x": {
              "field": "__1____highlight",
              "axis": {"labels": false}
            },
            "color": {
              "field": "%_Acumulado",
              "type": "quantitative",
              "scale": {
                "range": [
                  {"expr": "color1"},
                  {"expr": "color2"},
                  {"expr": "color3"}
                ]
              },
              "legend": null
            },
            "opacity": {
              "condition": {
                "test": {
                  "field": "__selected__",
                  "equal": "off"
                },
                "value": 0
              },
              "value": 1
            }
          }
        },
        {
          "mark": {
            "type": "text",
            "color": "#333333",
            "xOffset": 20
          },
          "encoding": {
            "text": {
              "field": "__1__",
              "format": "0.2s"
            },
            "x": {"field": "__1__"}
          }
        }
      ]
    },
    {
      "layer": [
        {
          "mark": {
            "type": "line",
            "color": "black",
            "point": {
              "color": "black",
              "filled": false,
              "fill": "white"
            }
          },
          "encoding": {
            "x": {
              "field": "%_Acumulado"
            }
          }
        },
        {
          "mark": {
            "type": "text",
            "color": "#333333",
            "xOffset": 25
          },
          "encoding": {
            "text": {
              "field": "%_Acumulado",
              "format": "0.0%",
              "formatType": "pbiFormat"
            },
            "x": {
              "field": "%_Acumulado",
              "axis": {
                "orient": "bottom",
                "formatType": "pbiFormat",
                "format": "0.0%",
                "values": [
                  0,
                  0.4,
                  0.8,
                  1
                ],
                "tickCount": 4
              }
            },
            "color": {
              "field": "%_Acumulado",
              "type": "quantitative",
              "scale": {
                "range": [
                  "#17202A",
                  "#D7DBDD",
                  "#ECF0F1"
                ],
                "reverse": true
              },
              "legend": null
            }
          }
        },
        {
          "mark": {"type": "text"},
          "encoding": {
            "text": {
              "field": "PCT",
              "format": "0.0%",
              "formatType": "pbiFormat"
            },
            "x": {"value": -25}
          }
        }
      ]
    }
  ],
  "resolve": {
    "scale": {
      "x": "independent",
      "color": "independent"
    }
  },
  "encoding": {
    "y": {
      "field": "__0__",
      "type": "nominal",
      "sort": {
        "field": "__1__",
        "op": "sum",
        "order": "descending"
      },
      "axis": {
        "labels": true,
        "title": "",
        "labelFontSize": 14,
        "offset": 40
      }
    },
    "x": {
      "type": "quantitative",
      "axis": {"title": ""}
    },
    "tooltip": [
      {
        "field": "__1__",
        "title": "Monto de Venta |",
        "format": "$#0,,0",
        "formatType": "pbiFormat"
      },
      {
        "field": "%_Acumulado",
        "title": "Porcentaje |",
        "format": "0.0%",
        "formatType": "pbiFormat"
      }
    ]
  }
}
```

© 2024 Cristobal Salcedo. Todos los derechos reservados. Impulsado por la creatividad y el café. :coffee:👍☕️
