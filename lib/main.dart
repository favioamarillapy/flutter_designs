import 'package:flutter/material.dart';
import 'package:flutter_designs/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: _TmpHomeScreen(),
      initialRoute: 'scroll_design',
      routes: {
        'basic_design': ((context) => BasicDesignScreen()),
        'scroll_design': (context) => ScrollScreen()
      },
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
