import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/home_page.dart';

// start page
class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

// state
class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();

    // Delay for 2 seconds, then navigate to HomePage with a fade-in transition
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut, // Smooth ease-in-out effect
              ),
            );

            return FadeTransition(opacity: opacityAnimation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(); // render background
  }
}

// background
class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:
            StackFit
                .expand, // Ensures the background image covers the whole screen
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Start.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Logo centered on the screen
          Center(
            child: Image.asset(
              "assets/images/Logo_big.png", // Make sure your logo is in the correct folder
              width: 220, // Adjust the size as needed
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
