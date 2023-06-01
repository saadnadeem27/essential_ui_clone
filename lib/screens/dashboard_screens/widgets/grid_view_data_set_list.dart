import 'package:flutter/material.dart';
import 'package:forms_ui/screens/dashboard_screens/widgets/grid_view_list.dart';
import 'package:pie_chart/pie_chart.dart';

class GridViewDataSetList {
  List<GridViewList> gridViewList = [
    GridViewList(
        fiberIntake: 30,
        proteinIntake: 260,
        calciumIntake: 100,
        carbsIntake: 80,
        fatIntake: 40,
        vitaminsIntake: 60),
    GridViewList(
        fiberIntake: 40,
        proteinIntake: 210,
        calciumIntake: 40,
        carbsIntake: 120,
        fatIntake: 50,
        vitaminsIntake: 90),
    GridViewList(
        fiberIntake: 20,
        proteinIntake: 210,
        calciumIntake: 140,
        carbsIntake: 50,
        fatIntake: 20,
        vitaminsIntake: 10),
    GridViewList(
        fiberIntake: 40,
        proteinIntake: 210,
        calciumIntake: 130,
        carbsIntake: 70,
        fatIntake: 60,
        vitaminsIntake: 80),
  ];

  Widget myPieChart(context, index) {
    Map<String, double> dataMap = {
      "Fiber": gridViewList[index].fiberIntake,
      "Protein": gridViewList[index].proteinIntake,
      "Carbs": gridViewList[index].carbsIntake,
      "Calcium": gridViewList[index].calciumIntake,
      "Fat": gridViewList[index].fatIntake,
      "Vitamins": gridViewList[index].vitaminsIntake,
    };
    double totalCalories = gridViewList[index].fiberIntake +
        gridViewList[index].proteinIntake +
        gridViewList[index].carbsIntake +
        gridViewList[index].calciumIntake +
        gridViewList[index].fatIntake +
        gridViewList[index].vitaminsIntake;

    final colorList = [
      Colors.blue,
      Colors.green,
      Colors.pink,
      Colors.yellow,
      Colors.red,
      Colors.deepPurple,
    ];
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 2,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,

      ringStrokeWidth: 19,

      centerText: '$totalCalories \n Calories consumed',
      centerTextStyle: TextStyle(
        fontSize: 18,
      ),
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: false,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}
