import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class GeoChart extends StatefulWidget {
  const GeoChart({Key key}) : super(key: key);

  @override
  State<GeoChart> createState() => _GeoChartState();
}

class _GeoChartState extends State<GeoChart> {
  WebViewXController webViewXController;
  @override
  Widget build(BuildContext context) {
    return WebViewX(
      ignoreAllGestures: false,
      width: MediaQuery.of(context).size.width / 1.5,
      height: 550,
      initialContent: ('''<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {
        'packages':['geochart'],
      });
      google.charts.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
          ['Country', 'Popularity'],
          ['Germany', 200],
          ['United States', 300],
          ['Brazil', 400],
          ['Canada', 500],
          ['France', 600],
          ['RU', 700]
        ]);

        var options = {};

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="regions_div" style="backgroundColor: #212121; overflow: none; height: 500px; width: 550;"></div>
  </body>
</html>
'''),
      initialSourceType: SourceType.html,
      onWebViewCreated: (controller) => webViewXController = controller,
    );
  }
}
// <html>
//   <head>
//     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
//     <script type="text/javascript">
//       google.charts.load('current', {
//         'packages':['geochart'],
//       });
//       google.charts.setOnLoadCallback(drawRegionsMap);

//       function drawRegionsMap() {
//         var data = google.visualization.arrayToDataTable([
//           ['Country', 'Popularity'],
//           ['Germany', 200],
//           ['United States', 300],
//           ['Brazil', 400],
//           ['Canada', 500],
//           ['France', 600],
//           ['RU', 700]
//         ]);

//         var options = {};

//         var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

//         chart.draw(data, options);
//       }
//     </script>
//   </head>
//   <body>
//     <div id="regions_div" style="width: 900px; height: 500px;"></div>
//   </body>
// </html>
