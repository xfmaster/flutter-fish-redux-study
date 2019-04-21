import 'package:flutter/material.dart';
import 'package:redux_demo/home/main/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainPage().buildPage(null);
  }
}
