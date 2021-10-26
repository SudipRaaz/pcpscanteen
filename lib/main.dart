import 'package:flutter/material.dart';
import 'pcpscanteen_theme.dart';

void main() {
  runApp(const PcpsCanteenApp());
}

class PcpsCanteenApp extends StatelessWidget {
  const PcpsCanteenApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = PcpscanteenTheme.dark();
    return MaterialApp(
      title: 'PCPS Canteen',
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PCPS Canteen',
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text(
            'Lets get cooking something in PCPS Canteen. Hello Students',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
