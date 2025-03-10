import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// app URLs
final facebookURL = Uri.parse('https://www.facebook.com/kasteelhuizeharmelen/');
final linkedinURL = Uri.parse(
  'https://www.linkedin.com/in/anita-siebelink-41b6451a/?originalSubdomain=nl',
);
final youtubeURL = Uri.parse('https://www.youtube.com/watch?v=x1Vv0x09_XE');
final instagramURL = Uri.parse(
  'https://www.instagram.com/kasteelhuizeharmelen/',
);

class BottomUI extends StatelessWidget {
  const BottomUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/images/Bottom_image.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover, // Ensures it covers the width properly
          ),
        ),

        // Foreground content
        Positioned(
          bottom: 10, // Adjust based on how far up you want the text
          left: 10,
          right: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // follow us text
              Padding(
                padding: const EdgeInsets.only(bottom: 115),
                child: Text(
                  'Volg ons:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "CustomFont",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              // icons
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Social Media Links
                    socialPlatform('assets/images/Facebook.png', facebookURL),
                    socialPlatform('assets/images/LinkedIn.png', linkedinURL),
                    socialPlatform('assets/images/Youtube.png', youtubeURL),
                    socialPlatform('assets/images/Instagram.png', instagramURL),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget socialPlatform(String imagePath, Uri url) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => launchUrl(url),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              imagePath,
              width: 30.0,
              height: 30.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
