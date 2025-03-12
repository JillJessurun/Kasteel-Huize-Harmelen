import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/home_page.dart';
import 'package:kasteelhuizeharmelen/widgets/buttons.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';
import 'package:url_launcher/url_launcher.dart';

// website
final webURL = Uri.parse(
  'https://www.kasteelhuizeharmelen.nl/offerte-aanvragen/',
);

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
        PageUI(
          backgroundPath: "assets/images/top_background.png",
          backWidget: HomePage(),
        ),

        // page content
        Offerte(),
      ],
    );
  }
}

class Offerte extends StatelessWidget {
  const Offerte({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 115, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Offerte aanvragen',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Bold",
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 41, 68, 53),
              decoration: TextDecoration.none,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'Vraag vrijblijvend een offerte aan. U krijgt altijd binnen 24 uur onze reactie. '
              'Klik hieronder om doorgestuurd te worden naar onze website:',
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
            text: "Offerte aanvragen",
            width: 160,
            height: 35,
            onPressed: () => launchUrl(webURL),
          ),

          // picture
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Image.asset('assets/gallery/kasteel40.jpg'),
          ),
        ],
      ),
    );
  }
}
