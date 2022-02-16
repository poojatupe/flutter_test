
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class HomeTab  extends StatefulWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool showBottmMenue = false;

  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('Test Percentage one', 40.8, Color(0xff2cede2)),
      new Task('Test Percentage tow', 15.3, Color(0xff881888)),
      new Task('Test Percentage three', 15.8, Color(0xFF68B39D)),
      new Task('Test Percentage four', 15.6, Color(0xfffdbe19)),
    ];
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'tes',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(top: 22),
              // height: height,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF53DFE1).withOpacity(0.5),
                                Colors.white.withOpacity(0.5)
                              ]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 20, bottom: 22),
                          child: Text(
                            'example', style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: charts.PieChart(
                              _seriesPieData,
                              animate: true,
                              animationDuration: Duration(seconds: 2),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification
                                      .endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 4,
                                  cellPadding: new EdgeInsets.only(
                                      left: 4.0, bottom: 4.0, top: 7.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.black,
                                      fontFamily: 'Georgia',
                                      fontSize: 14),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 120,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition
                                            .inside)
                                  ])),
                        ),
                      ),
                    ],
                  ),


                ],

              ),
            ),
          ),
        );

  }
}



class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
