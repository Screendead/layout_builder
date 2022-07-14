import 'package:flutter/material.dart';
import 'package:layout_builder/layout_reporting_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 2,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 2,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 3,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 2,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 2,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 3,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 5,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 2,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 3,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                        Flexible(
                          flex: 1,
                          child: LayoutReportingWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
