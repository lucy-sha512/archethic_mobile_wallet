// Package imports:
import 'package:fl_chart/fl_chart.dart';

class ChartInfos {
  ChartInfos(
      {this.minY,
      this.maxY,
      this.minX,
      this.maxX,
      this.data,
      this.priceChangePercentage24h});

  double? minY = 0;
  double? maxY = 0;
  double? minX = 0;
  double? maxX = 0;
  List<FlSpot>? data;
  double? priceChangePercentage24h = 0;
}
