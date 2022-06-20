/* BatteryOptimizer画面 */

import 'package:battery_optimizer/widget/%20optimizeButton/optimizeButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Indicator/batteryLevelIndicatorPainter.dart';
import '../widget/Optimizer/optimizerButton.dart';
import '../widget/listTile/appsDrainage.dart';

class BatteryOptimizerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Battery Optimizer'),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /* ここにWidgetを並べていく */
            OptimizerButtons(),
            BatteryLevelIndicator(),
            AppsDrainage(),
            OptimizeNow(),
          ],
        ),
      ),
    );
  }
}
