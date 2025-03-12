import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/buttons.dart';

class PageUI extends StatelessWidget {
  final String backgroundPath;

  const PageUI({super.key, required this.backgroundPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // background pic top screen
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              backgroundPath,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          // background image bottom screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Bottom_image2.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),

          // logo
          Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/logo.png',
                width: 90,
                height: 71,
              ),
            ),
          ),

          // back button
          HomeButton(),
        ],
      ),
    );
  }
}
