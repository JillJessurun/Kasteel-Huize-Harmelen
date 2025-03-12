import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/buttons.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';
import 'package:url_launcher/url_launcher.dart';

// website
final webURL = Uri.parse(
  'https://www.kasteelhuizeharmelen.nl/offerte-aanvragen/',
);

// contact page
class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(backgroundPath: "assets/images/top_background.png"),

        // page content
        Contact(),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(Object context) {
    return // Contact Info
    Padding(
      padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              'Contact -> altijd binnen 24 uur onze reactie.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Bold",
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 41, 68, 53),
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Kasteel Huize Harmelen',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "CustomFont",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 41, 68, 53),
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              'Kasteellaan 1\n3481GR Harmelen\n\n0348445123\n06 53237572\n06 52034484\n\nRon Jessurun & Anita Siebelink\n',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "CustomFont",
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 41, 68, 53),
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Text(
            'info@kasteelhuizeharmelen.nl',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "CustomFont",
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 41, 68, 53),
              decoration: TextDecoration.none,
            ),
          ),

          // more info
          // route
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 90),
            child: Text(
              'Routebeschrijving:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "CustomFont",
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 41, 68, 53),
                decoration: TextDecoration.none,
              ),
            ),
          ),

          // button
          InfoButton(
            text: "Lees meer",
            width: 100,
            height: 35,
            onPressed: () {
              print("HIER HEB JE EEN ROUTEBESCHRIJVING KUT");
            },
          ),

          // website redirection
          Padding(
            padding: const EdgeInsets.only(bottom: 9, top: 20),
            child: Text(
              'Op de website een offerte aanvragen:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "CustomFont",
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 41, 68, 53),
                decoration: TextDecoration.none,
              ),
            ),
          ),

          // button
          InfoButton(
            text: "Website",
            width: 100,
            height: 35,
            onPressed: () => launchUrl(webURL),
          ),
        ],
      ),
    );
  }
}
