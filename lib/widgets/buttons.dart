import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/functions.dart';

// menu button
class MenuButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MenuButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 16),
        child: SizedBox(
          width: 228, // Set the fixed width for the button
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(
                255,
                48,
                83,
                64,
              ), // Button background color
              foregroundColor: Colors.white, // Text color Button size
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Rounded edges
              ),
              minimumSize: Size(
                228,
                50,
              ), // Minimum size (doesn't impact since width is set)
              textStyle: TextStyle(
                fontSize: 18, // Font size
                fontWeight: FontWeight.bold, // Font weight
                fontFamily: 'CustomFont',
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align text to the left
              child: Text(text), // Text aligned to the left
            ),
          ),
        ),
      ),
    );
  }
}

// back home button
class HomeButton extends StatelessWidget {
  final StatefulWidget backWidget;

  const HomeButton({super.key, required this.backWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: SizedBox(
          width: 45,
          height: 45,
          child: IconButton(
            onPressed: () {
              navigate(context, 150, backWidget);
            },
            icon: Image.asset('assets/images/back.png'),
          ),
        ),
      ),
    );
  }
}

// info button
class InfoButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const InfoButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: width, // Set the fixed width for the button
        height: height,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(
              255,
              48,
              83,
              64,
            ), // Button background color
            foregroundColor: Colors.white, // Text color Button size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // Rounded edges
            ),
            //minimumSize: Size(
            //  80,
            //  40,
            //),
            textStyle: TextStyle(
              fontSize: 15, // Font size
              fontWeight: FontWeight.bold, // Font weight
              fontFamily: 'CustomFont',
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ), // Text aligned to the left
          ),
        ),
      ),
    );
  }
}
