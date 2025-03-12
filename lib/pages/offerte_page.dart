import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

// offerte page
class OffertePage extends StatefulWidget {
  const OffertePage({super.key});

  @override
  _OffertePageState createState() => _OffertePageState();
}

class _OffertePageState extends State<OffertePage> {
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

class Offerte extends StatelessWidget {
  const Offerte({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
