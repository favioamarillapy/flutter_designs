import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "App",
      home: _TmpHomeScreen(),
      initialRoute: 'home_design',
      routes: {
        'home_design': ((context) => HomeScreen()),
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
