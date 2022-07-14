import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LayoutReportingWidget extends StatefulWidget {
  const LayoutReportingWidget({Key? key}) : super(key: key);

  static EdgeInsets padding(BoxConstraints constraints, double percentage) {
    return EdgeInsets.symmetric(
      horizontal: constraints.maxWidth * percentage,
      vertical: constraints.maxHeight * percentage,
    );
  }

  @override
  State<LayoutReportingWidget> createState() => _LayoutReportingWidgetState();
}

class _LayoutReportingWidgetState extends State<LayoutReportingWidget> {
  final Color color =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          color: color,
        ),
        child: Padding(
          padding: LayoutReportingWidget.padding(constraints, 0.05),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const VerticalDivider(
                thickness: 2,
                color: Colors.red,
              ),
              const Divider(
                thickness: 2,
                color: Colors.red,
              ),
              ColoredBox(
                color: Colors.white,
                child: SizedBox(
                  width: max(constraints.maxWidth * 0.1, 64),
                  height: max(constraints.maxHeight * 0.1, 32),
                  child: Center(
                    child: Text(
                      '${constraints.maxWidth.floor()} x ${constraints.maxHeight.floor()}',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
