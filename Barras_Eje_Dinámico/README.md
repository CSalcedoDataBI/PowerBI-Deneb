# Gráfico de Barras con Alineación de Eje Dinámica en Power BI usando Deneb y Vega

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro gráfico de barras con alineación de eje dinámica.

## Características

### Alineación de Eje Dinámica

![GIF Gráfico de Barras con Alineación de Eje Dinámica](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/087e5b69d98616aaf1e389883461fa2a4f1ec3fa/Barras_Eje_Din%C3%A1mico/Files/Alineaci%C3%B3n_Din%C3%A1mica_del_Eje.gif)

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/087e5b69d98616aaf1e389883461fa2a4f1ec3fa/Barras_Eje_Din%C3%A1mico/Files/Alineaci%C3%B3n_Din%C3%A1mica_del_Eje.png)

Sumérgete en el editor de Deneb en Power BI y explora las diferentes capas de código. Cada capa corresponde a una pieza del rompecabezas visual, incluyendo datos, escalas, ejes y marcas como se describe en la plantilla Vega que proporcionamos.

Cómo Usar
Para usar este visual en tus informes de Power BI, sigue estos pasos:

### Descarga el archivo .pbix desde este enlace

Abre el archivo en Power BI.
Navega al panel 'Visualizaciones' y selecciona el visual personalizado de Deneb.
Carga tus datos y vincula los campos de acuerdo con la plantilla proporcionada.  [file_folder](https://github.com/cristobalsalcedo90/PowerBI-Deneb/raw/main/Barras_Eje_Din%C3%A1mico/Files/Alineaci%C3%B3n%20Din%C3%A1mica%20del%20Eje.pbix)

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
      "build": "1.6.2.1",
      "metaVersion": 1,
      "provider": "vega",
      "providerVersion": "5.26.1"
    },
    "interactivity": {
      "tooltip": true,
      "contextMenu": true,
      "selection": false,
      "highlight": false,
      "dataPointLimit": 50
    },
    "information": {
      "name": "Gráfico de Barras con Alineación de Eje Dinámica",
      "description": "Gráfico de Barras con Alineación de Eje Dinámica",
      "author": "Cristobal Salcedo Beltran",
      "uuid": "9f29a249-c803-46ee-a17f-7c7a2615135b",
      "generated": "2024-04-11T02:42:55.695Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Categoria",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "Medida",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__2__",
        "name": "Parameter Opciones Value",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      },
      {
        "key": "__3__",
        "name": "Parameter Alineacion Value",
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
    }
  },
  "description": "Visualización que muestra la alineación de etiquetas en un eje dependiendo de una opción seleccionada, Author : Cristobal Salcedo Beltran, Email address: csalcedo90@gmail.com, Fuente de inspirirado: post de Carlos Zapata  https://www.linkedin.com/posts/merod_excel-activity-7173334410480574465-TFEV?utm_source=share&utm_medium=member_desktop",
  "background": "#f9f9f9",
  "padding": 15,
  "data": [
    {"name": "dataset"},
    {
      "name": "transformedData",
      "source": "dataset",
      "transform": [
        {
          "type": "formula",
          "expr": "maxValue",
          "as": "maxValueField"
        }
      ]
    }
  ],
  "signals": [
    {
      "name": "selectionOption",
      "description": "Esta señal captura la opción seleccionada del dataset, la cual determina el comportamiento de visualización.",
      "update": "pluck(data('dataset'), '__2__')[0]"
    },
    {
      "name": "maxValue",
      "description": "Define el valor máximo a utilizar en la escala X, basado en la opción seleccionada. Si la opción es 1, el valor máximo será 100; de lo contrario, será 0.",
      "update": "selectionOption == 1 ? 100 : 0"
    },
    {
      "name": "labelAlignment",
      "description": "Determina la alineación de las etiquetas del eje basada en un parámetro del dataset. Si el valor es 2, la alineación será a la izquierda; de lo contrario, a la derecha.",
      "update": "pluck(data('dataset'), '__3__')[0] == 2 ? 'left': 'right'"
    },
    {
      "name": "labelOffset",
      "description": "Establece el desplazamiento de las etiquetas del eje en función de su alineación. Si las etiquetas están alineadas a la izquierda, el desplazamiento será 160; si están a la derecha, será 10.",
      "update": "labelAlignment == 'left' ? 160: 10"
    }
  ],
  "title": {
    "anchor": "middle",
    "font": {"value": "Tahoma"},
    "fontSize": {"value": 30},
    "fontWeight": "bold",
    "dy": 30,
    "encode": {
      "title": {
        "update": {
          "text": {
            "value": "left or right aligned axis?"
          },
          "fill": {"value": "black"}
        }
      }
    }
  },
  "scales": [
    {
      "name": "yScale",
      "type": "band",
      "domain": {
        "data": "transformedData",
        "field": "__0__",
        "sort": {
          "op": "max",
          "field": "__1__",
          "order": "descending"
        }
      },
      "range": "height",
      "padding": 0.3,
      "round": true
    },
    {
      "name": "xScale",
      "domain": {
        "fields": [
          {
            "data": "transformedData",
            "field": "__1__"
          },
          {
            "data": "transformedData",
            "field": "maxValueField"
          }
        ]
      },
      "nice": true,
      "range": "width"
    }
  ],
  "axes": [
    {
      "scale": "xScale",
      "orient": "top",
      "labelOpacity": 0,
      "domain": false,
      "title": "",
      "ticks": false,
      "tickCount": 2
    },
    {
      "orient": "left",
      "offset": {
        "signal": "selectionOption == 2 ? 25 : 0"
      },
      "labelAlign": {
        "signal": "labelAlignment"
      },
      "labelPadding": {
        "signal": "labelOffset"
      },
      "ticks": false,
      "domainOpacity": 0,
      "labelFontSize": 18,
      "labelFont": "Arial Monospaced MT",
      "scale": "yScale",
      "title": ""
    }
  ],
  "marks": [
    {
      "type": "rect",
      "from": {
        "data": "transformedData"
      },
      "encode": {
        "enter": {
          "fill": {"value": "#d1484b"},
          "x": {
            "scale": "xScale",
            "field": "__1__"
          },
          "x2": {
            "scale": "xScale",
            "value": 0
          },
          "y": {
            "scale": "yScale",
            "field": "__0__"
          },
          "height": {
            "scale": "yScale",
            "band": 1
          }
        }
      }
    },
    {
      "type": "rect",
      "from": {
        "data": "transformedData"
      },
      "encode": {
        "enter": {
          "fill": {
            "value": "transparent"
          },
          "stroke": {"value": "black"},
          "strokeWidth": {"value": 0.3},
          "strokeDash": {
            "value": [6, 4]
          },
          "x": {
            "scale": "xScale",
            "field": "maxValueField"
          },
          "x2": {
            "scale": "xScale",
            "field": "__1__"
          },
          "y": {
            "scale": "yScale",
            "field": "__0__",
            "band": 0.03
          },
          "height": {
            "scale": "yScale",
            "band": 0.95
          }
        }
      }
    },
    {
      "type": "text",
      "from": {
        "data": "transformedData"
      },
      "encode": {
        "enter": {
          "fill": {
            "signal": "selectionOption == 2 ? 'black': 'white'"
          },
          "x": {
            "scale": "xScale",
            "signal": "selectionOption == 2 ? -1 : 1"
          },
          "y": {
            "scale": "yScale",
            "field": "__0__",
            "band": 0.6
          },
          "align": {
            "signal": "selectionOption == 2 ?'right': 'left'"
          },
          "text": {
            "signal": "selectionOption == 1 || selectionOption == 2 || selectionOption == 3 ? datum['__1__'] +' %':''"
          }
        }
      }
    },
    {
      "type": "text",
      "from": {
        "data": "transformedData"
      },
      "encode": {
        "enter": {
          "fill": {
            "signal": "selectionOption == 4 ? 'black': 'white'"
          },
          "x2": {
            "offset": {
              "signal": "selectionOption == 4 ? 4 : -30"
            },
            "scale": "xScale",
            "field": "__1__"
          },
          "align": {"value": "left"},
          "y": {
            "scale": "yScale",
            "field": "__0__",
            "band": 0.6
          },
          "text": {
            "signal": "selectionOption == 4 || selectionOption == 5 ? datum['__1__'] +' %':''"
          }
        }
      }
    }
  ]
}
```

© 2024 Cristobal Salcedo. Todos los derechos reservados. Impulsado por la creatividad y el café. :coffee:👍☕️
