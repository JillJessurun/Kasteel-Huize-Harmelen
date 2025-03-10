import 'package:flutter/material.dart';

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
        child: Container(
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
