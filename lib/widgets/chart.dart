import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesData, String>>[
          SplineSeries<SalesData, String>(
            color: Color.fromARGB(255, 47, 125, 121),
            width:3,
            dataSource: <SalesData>[
              SalesData('Mon', 3000),
              SalesData('Tue', 500),
              SalesData('Wed', 2000),
              SalesData('Thu', 4800),
              SalesData('Fri', 1500),
              SalesData('Sat', 5600),
              SalesData('Sun', 6000),
            ],
            xValueMapper: (SalesData sales,_) => sales.day,
            yValueMapper: (SalesData sales,_) => sales.sales,
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.day, this.sales);
  final String day;
  final int sales;
}
