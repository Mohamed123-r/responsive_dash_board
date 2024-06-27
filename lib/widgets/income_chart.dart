import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      getPieChartData(),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          setState(() {
            if (pieTouchResponse == null ||
                pieTouchResponse.touchedSection == null) {
              selectedIndex = -1;
              return;
            }
            selectedIndex =
                pieTouchResponse.touchedSection!.touchedSectionIndex;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          value: 22,
          title: selectedIndex == 0 ? '22%' : '',
          titleStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          radius: selectedIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          title: selectedIndex == 1 ? '20%' : '',
          titleStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          radius: selectedIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          radius: selectedIndex == 2 ? 50 : 40,
          title: selectedIndex == 2 ? '25%' : '',
          titleStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        PieChartSectionData(
          color: const Color(0xff208CC8),
          value: 40,
          title: selectedIndex == 3 ? '40%' : '',
          titleStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          radius: selectedIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
