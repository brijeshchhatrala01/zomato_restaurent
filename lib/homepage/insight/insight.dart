import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InsightPage extends StatelessWidget {
  const InsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PieChart(
            swapAnimationCurve: Curves.linear,
            swapAnimationDuration: const Duration(milliseconds: 150),
            PieChartData(
              pieTouchData: PieTouchData(
                enabled: true,
              ),
              centerSpaceRadius: double.infinity,
              borderData: FlBorderData(show: true),
              sections: [
                PieChartSectionData(
                  title: 'Data 1',
                  color: Colors.blue,
                  value: 20,
                ),
                PieChartSectionData(
                  title: 'Data 2',
                  color: Colors.red,
                  value: 40,
                ),
                PieChartSectionData(
                  title: 'Data 1',
                  color: Colors.green,
                  value: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
