import 'package:flutter/material.dart';
import 'package:pcpscanteen/home.dart';
import 'package:pcpscanteen/pcpscanteen_theme.dart';

void main() {
  runApp(const PcpsCanteenApp());
}

class PcpsCanteenApp extends StatelessWidget {
  const PcpsCanteenApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = PcpscanteenTheme.light();
    return MaterialApp(
      title: 'PCPS Canteen',
      theme: theme,
      home: const Home(),
    );
  }
}
