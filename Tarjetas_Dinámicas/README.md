# Tarjetas_Dinamicas_Tendencia_Deneb_VegaLite

![Descripción de la imagen](https://github.com/cristobalsalcedo90/PowerBI-Deneb/blob/aa1aa09433ee85df9e18996df0f1e829c67a1186/Tarjetas_Din%C3%A1micas/Tarjetas_Dinamicas_Tendencia_Deneb_VegaLite.PNG)


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
      "name": "Gráfico de Tarjeta Dinámica en Power BI con Vega-Lite y Deneb",
      "description": "Gráfico de Tarjeta Dinámica en Power BI con Vega-Lite y Deneb",
      "author": "Cristobal Salcedo",
      "uuid": "598831c3-650c-4740-97db-214254dadcb4",
      "generated": "2023-06-23T15:50:21.169Z"
    },
    "dataset": [
      {
        "key": "__0__",
        "name": "Date",
        "description": "",
        "type": "dateTime",
        "kind": "column"
      },
      {
        "key": "__1__",
        "name": "Stock",
        "description": "",
        "type": "text",
        "kind": "column"
      },
      {
        "key": "__2__",
        "name": "Price__Total",
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
  "data": {"name": "dataset"},
  "transform": [
    {
      "window": [
        {
          "field": "__2__",
          "op": "first_value",
          "as": "first_value"
        },
        {
          "field": "__0__",
          "op": "first_value",
          "as": "first_date"
        }
      ]
    },
    {
      "window": [
        {
          "field": "__2__",
          "op": "last_value",
          "as": "last_value"
        },
        {
          "field": "__0__",
          "op": "last_value",
          "as": "last_date"
        },
        {
          "field": "__0__",
          "op": "count",
          "as": "CountRow"
        }
      ],
      "frame": [null, null]
    },
    {
      "calculate": "datum.last_value - datum.first_value",
      "as": "SentimentColor"
    },
    {
      "calculate": "(datum.last_value - datum.first_value) / datum.first_value",
      "as": "PctDiff"
    },
    {
      "calculate": "pbiFormat(datum.first_date,'M-dd-yyyy') + ' to '+ pbiFormat(datum.last_date,'M-dd-yyyy')",
      "as": "__date__"
    },
    {
      "calculate": "datum['__1__'] + ' ' + datum.CountRow + '-Day' + (datum.PctDiff < 0 ? ' Loss ' : ' Gain ') + pbiFormat(datum.PctDiff, '0.0%')",
      "as": "__title__"
    }
  ],
  "width": 200,
  "height": 120,
  "layer": [
    {
      "transform": [
        {"filter": "datum.__row__ == 1"}
      ],
      "layer": [
        {
          "mark": {
            "type": "rect",
            "align": "left",
            "fill": "gray",
            "opacity": 0.1,
            "height": 170,
            "width": 385,
            "yOffset": 60,
            "xOffset": -180,
            "cornerRadius": 15
          }
        },
        {
          "mark": {
            "type": "rect",
            "align": "left",
            "color": {
              "expr": "datum.SentimentColor<0? 'firebrick':'green'"
            },
            "height": 170,
            "width": 15,
            "yOffset": 60,
            "xOffset": 200
          }
        },
        {
          "mark": {
            "type": "text",
            "color": "black",
            "fontWeight": 600,
            "fontSize": 14
          },
          "encoding": {
            "text": {
              "value": "Current Price"
            },
            "x": {"value": -100},
            "y": {"value": 40}
          }
        },
        {
          "mark": {
            "type": "text",
            "align": "left",
            "color": "black",
            "fontWeight": 900,
            "fontSize": 14
          },
          "encoding": {
            "text": {
              "field": "__title__"
            },
            "x": {"value": -160},
            "y": {"value": -52}
          }
        },
        {
          "mark": {
            "type": "text",
            "color": "black",
            "align": "left",
            "fontWeight": 400,
            "fontSize": 10
          },
          "encoding": {
            "text": {
              "field": "__date__"
            },
            "x": {"value": -160},
            "y": {"value": -35}
          }
        },
        {
          "mark": {
            "type": "text",
            "color": {
              "expr": "datum.SentimentColor<0? 'firebrick':'green'"
            },
            "fontWeight": 700,
            "fontSize": 25
          },
          "encoding": {
            "text": {
              "field": "last_value",
              "formatType": "pbiFormat",
              "format": "$0.0"
            },
            "x": {"value": -100},
            "y": {"value": 70}
          }
        }
      ]
    },
    {
      "mark": {
        "type": "line",
        "strokeWidth": 1.5,
        "color": "black",
        "opacity": 0.7,
        "tooltip": true
      },
      "encoding": {
        "y": {"field": "__2__"}
      }
    },
    {
      "transform": [
        {
          "regression": "__2__",
          "on": "__0__"
        },
        {
          "window": [
            {
              "field": "__2__",
              "op": "first_value",
              "as": "first_value"
            }
          ]
        },
        {
          "window": [
            {
              "field": "__2__",
              "op": "last_value",
              "as": "last_value"
            }
          ],
          "frame": [null, null]
        },
        {
          "calculate": "datum.last_value-datum.first_value",
          "as": "SentimentColor"
        }
      ],
      "mark": {
        "type": "line",
        "strokeWidth": 1.5,
        "strokeDash": [4, 8],
        "color": {
          "expr": "datum.SentimentColor<0? 'firebrick' : 'green' "
        }
      },
      "encoding": {
        "x": {
          "field": "__0__",
          "type": "ordinal"
        },
        "y": {
          "field": "__2__",
          "type": "quantitative"
        }
      }
    }
  ],
  "encoding": {
    "x": {
      "field": "__0__",
      "timeUnit": "monthdate",
      "type": "nominal",
      "axis": {
        "labelExpr": "[datum.label[0] + '-' +split(datum.label,' ')[1]]",
        "title": "",
        "labelFontSize": 8,
        "labelSeparation": 1,
        "tickCount": 10
      }
    },
    "y": {
      "type": "quantitative",
      "axis": {
        "labelFontSize": 8,
        "title": ""
      },
      "scale": {
        "type": "linear",
        "zero": false
      }
    }
  }
}
