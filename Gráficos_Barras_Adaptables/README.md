# Gráfico Barras Adaptables VegaLite en Power BI usando Deneb y Vega

## Introducción

¡Bienvenidos a esta herramienta de visualización dinámica que combina el poder de las visualizaciones personalizadas de Deneb con la flexibilidad de la gramática de Vega! :sparkles: Este README ofrece una visión general de las características interactivas disponibles en nuestro Gráfico Barras Adaptables VegaLite.

## Características

### Barras Adaptables

![GIF de Barras Adaptables](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/5548ce4488bdd82a1a208dee654d3da02334f4b4/Gr%C3%A1ficos_Barras_Adaptables/Barras_Adaptables_VegaLite.gif)

### Editor de Deneb en Power BI

![GIF del Editor de Deneb](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/400277d127b2ab90e29d3e5481f0b7897abdfebc/Gr%C3%A1ficos_Barras_Adaptables/Files/Editor%20de%20Deneb.gif)

Sumérgete en el editor de Deneb en Power BI y explora las diferentes capas de código. Cada capa corresponde a una pieza del rompecabezas visual, incluyendo datos, escalas, ejes y marcas como se describe en la plantilla Vega que proporcionamos.

Cómo Usar
Para usar este visual en tus informes de Power BI, sigue estos pasos:

### Descarga el archivo .pbix desde este enlace

Abre el archivo en Power BI.
Navega al panel 'Visualizaciones' y selecciona el visual personalizado de Deneb.
Carga tus datos y vincula los campos de acuerdo con la plantilla proporcionada.  [file_folder](https://github.com/cristobalsalcedo90/PowerBI-Deneb/raw/main/Gr%C3%A1ficos_Barras_Adaptables/Files/Barras_Adaptables_VegaLite.pbix)

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
      "build": "1.6.2.1",
      "metaVersion": 1,
      "provider": "vegaLite",
      "providerVersion": "5.16.3"
    },
    "interactivity": {
      "tooltip": true,
      "contextMenu": true,
      "selection": false,
      "highlight": false,
      "dataPointLimit": 50
    },
    "information": {
      "name": "Barras_Adaptables_VegaLite",
      "description": "Barras_Adaptables_VegaLite",
      "author": "Cristobal Salcedo Beltran",
      "uuid": "8272f06d-59bc-4293-b435-cd28b9702582",
      "generated": "2024-03-14T23:01:34.379Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "a",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "b",
        "description": "",
        "type": "numeric",
        "kind": "measure"
      }
    ]
  },
  "config": {
    "view": {"stroke": "transparent"},
    "background": "transparent",
    "font": "Segoe UI",
    "header": {
      "titleFont": "wf_standard-font, helvetica, arial, sans-serif",
      "titleFontSize": 16,
      "titleColor": "#252423",
      "labelFont": "Segoe UI",
      "labelFontSize": 13.333333333333332,
      "labelColor": "#605E5C"
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
    "axisBand": {"tickExtra": true},
    "axisX": {"labelPadding": 5},
    "axisY": {"labelPadding": 10},
    "bar": {"fill": "#118DFF"},
    "line": {
      "stroke": "#118DFF",
      "strokeWidth": 3,
      "strokeCap": "round",
      "strokeJoin": "round"
    },
    "text": {
      "font": "Segoe UI",
      "fontSize": 12,
      "fill": "#605E5C"
    },
    "arc": {"fill": "#118DFF"},
    "area": {
      "fill": "#118DFF",
      "line": true,
      "opacity": 0.6
    },
    "path": {"stroke": "#118DFF"},
    "rect": {"fill": "#118DFF"},
    "point": {
      "fill": "#118DFF",
      "filled": true,
      "size": 75
    },
    "shape": {"stroke": "#118DFF"},
    "symbol": {
      "fill": "#118DFF",
      "strokeWidth": 1.5,
      "size": 50
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
    },
    "range": {
      "category": [
        "#118DFF",
        "#12239E",
        "#E66C37",
        "#6B007B",
        "#E044A7",
        "#744EC2",
        "#D9B300",
        "#D64550"
      ],
      "diverging": [
        "#DEEFFF",
        "#118DFF"
      ],
      "heatmap": ["#DEEFFF", "#118DFF"],
      "ordinal": [
        "#DEEFFF",
        "#c7e4ff",
        "#b0d9ff",
        "#9aceff",
        "#83c3ff",
        "#6cb9ff",
        "#55aeff",
        "#3fa3ff",
        "#2898ff",
        "#118DFF"
      ]
    }
  },
  "description": "A simple bar chart with embedded data.Author : Cristobal Salcedo Beltran, Email address: csalcedo90@gmail.com",
  "data": {"name": "dataset"},
  "mark": "bar",
  "encoding": {
    "x": {
      "field": "__0__",
      "type": "nominal",
      "axis": {"labelAngle": 0},
      "sort": {
        "field": "__1__",
        "order": "ascending"
      }
    },
    "y": {
      "field": "__1__",
      "type": "quantitative"
    }
  }
}
```

© 2024 Cristobal Salcedo. Todos los derechos reservados. Impulsado por la creatividad y el café. :coffee:👍☕️
