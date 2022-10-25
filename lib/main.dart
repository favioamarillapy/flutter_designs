import 'package:flutter/material.dart';
import 'package:flutter_designs/src/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: _TmpHomeScreen(),
      initialRoute: 'basic_design',
      routes: {'basic_design': ((context) => BasicDesignScreen())},
    );
  }
}

class _TmpHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("hello")],
    );
  }
}
