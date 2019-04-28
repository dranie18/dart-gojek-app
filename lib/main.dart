import 'package:flutter/material.dart';
import 'package:gojek/constant.dart';
import 'package:gojek/launcher.dart';

void main() => runApp(GojekApp());

class GojekApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek',
      theme: new ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: GojekPalette.green,
        accentColor: GojekPalette.green
      ),
      home: new LauncherPage(),
    );
  }
}
