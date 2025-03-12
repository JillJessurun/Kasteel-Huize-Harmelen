import 'package:flutter/material.dart';

bool home = true; // check variable whether to go home on pageUI

void navigate(context, int durationMilliseconds, StatefulWidget nextPage) {
  // navigate to other page
  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      transitionDuration: Duration(
        milliseconds: durationMilliseconds,
      ), // Animation duration
      pageBuilder: (context, animation, secondaryAnimation) => nextPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    ),
  );
}
