import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

// fotogalerij page
class FotogalerijPage extends StatefulWidget {
  const FotogalerijPage({super.key});

  @override
  _FotogalerijPageState createState() => _FotogalerijPageState();
}

class _FotogalerijPageState extends State<FotogalerijPage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(backgroundPath: "assets/images/top_background.png"),

        // page content
      ],
    );
  }
}

class Fotogalerij extends StatelessWidget {
  const Fotogalerij({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
