import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return WebLayout();
          } else if (constraints.maxWidth > 400) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        }),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

// TODO: Layout web
// TODO: Layout tablet
// TODO: Layout mobile
// TODO:
