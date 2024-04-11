# Gráfico de Pareto Dinámico con Filtrado Cruzado en Power BI usando Deneb y Vega-Lite

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro Gráfico de Pareto Dinámico con Deneb y Vega-Lite.

## Características

### Filtrado Cruzado y Resaltado

![GIF de Filtrado Cruzado y Resaltado](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/087e5b69d98616aaf1e389883461fa2a4f1ec3fa/Diagramas_Pareto/FIles/Pareto_Dinamico_Deneb_VegaLite_P2.gif)

Experimenta capacidades de filtrado cruzado y resaltado sin fisuras, que permiten un análisis intuitivo de conjuntos de datos complejos. Simplemente seleccionando un punto de datos, puedes ver instantáneamente la información relacionada resaltada en otros visuales. :mag:

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/70f4049c4b85d7ad063a4471f63806da73737474/Diagramas_Pareto/FIles/Editor%20de%20Deneb.gif)

Sumérgete en el editor de Deneb en Power BI y explora las diferentes capas de código. Cada capa corresponde a una pieza del rompecabezas visual, incluyendo datos, escalas, ejes y marcas como se describe en la plantilla Vega-Lite que proporcionamos.

Cómo Usar
Para usar este visual en tus informes de Power BI, sigue estos pasos:

### Descarga el archivo .pbix desde este enlace

Abre el archivo en Power BI.
Navega al panel 'Visualizaciones' y selecciona el visual personalizado de Deneb.
Carga tus datos y vincula los campos de acuerdo con la plantilla proporcionada.  [file_folder](https://github.com/cristobalsalcedo90/PowerBI-Deneb/raw/main/Diagramas_Pareto/FIles/Pareto_Dinamico_Deneb_VegaLite_P2.pbix)

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
      "build": "1.5.0.0",
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
      "name": "Gráfico de Pareto Dinámico con Deneb y Vega-Lite",
      "description": "Plantilla de gráfico de Pareto para visualizar distribución de ventas por producto. Detecta productos clave con el Principio de Pareto. Ideal para analistas, especialistas en visualización y comunicación efectiva de patrones de ventas.",
      "author": "Cristobal-Salcedo",
      "uuid": "90c5a2ce-2e15-4007-a4ce-65864a96eff5",
      "generated": "2023-05-11T03:00:01.132Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Product",
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
    }
  ],
  "title": {
    "text": "Ventas por producto (Principio de Pareto)",
    "subtitle": "'Muestra la contribución de los productos al total de ventas",
    "fontSize": 20,
    "color": "#333333"
  },
  "layer": [
    {
      "layer": [
        {
          "mark": {"type": "bar"},
          "encoding": {
            "y": {"field": "__1__"},
            "color": {
              "field": "%_Acumulado",
              "type": "nominal",
              "scale": {
                "domain": [
                  "0% - 80%",
                  "80% - 100%"
                ],
                "range": [
                  "#7F7F7F",
                  "#D62728"
                ]
              },
              "title": "Principio de Pareto"
            }
          }
        },
        {
          "mark": {
            "type": "bar",
            "opacity": 0.3,
            "tooltip": true,
            "color": {
              "expr": "datum['%_Acumulado']<=0.8?'#7F7F7F': '#D62728'"
            }
          },
          "encoding": {
            "y": {"field": "__1__"}
          }
        },
        {
          "mark": {
            "type": "bar",
            "color": {
              "expr": "datum['%_Acumulado']<=0.8?'#7F7F7F': '#D62728'"
            },
            "tooltip": true
          },
          "encoding": {
            "y": {
              "field": "__1____highlight"
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
            "yOffset": -16
          },
          "encoding": {
            "text": {
              "field": "__1__",
              "format": "$#0,0",
              "formatType": "pbiFormat"
            },
            "y": {"field": "__1__"}
          }
        }
      ]
    },
    {
      "layer": [
        {
          "mark": {
            "type": "line",
            "color": "#1F77B4",
            "point": {
              "color": "#1F77B4",
              "filled": false,
              "fill": "white"
            }
          },
          "encoding": {
            "y": {
              "field": "%_Acumulado"
            }
          }
        },
        {
          "mark": {
            "type": "text",
            "color": "#333333",
            "yOffset": -16
          },
          "encoding": {
            "text": {
              "field": "%_Acumulado",
              "format": "0.0%",
              "formatType": "pbiFormat"
            },
            "y": {
              "field": "%_Acumulado"
            }
          }
        }
      ]
    }
  ],
  "resolve": {
    "scale": {"y": "independent"}
  },
  "encoding": {
    "x": {
      "field": "__0__",
      "type": "nominal",
      "sort": {
        "field": "__1__",
        "op": "sum",
        "order": "descending"
      }
    },
    "y": {
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
