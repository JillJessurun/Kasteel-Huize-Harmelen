import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/start_page.dart';

// main
void main() => runApp(MyApp());

// app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Kasteel Huize Harmelen', home: StartPage());
  }
}
