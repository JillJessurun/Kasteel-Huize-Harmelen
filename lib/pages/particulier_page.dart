import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/catering_page.dart';
import 'package:kasteelhuizeharmelen/pages/home_page.dart';
import 'package:kasteelhuizeharmelen/widgets/buttons.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';
import 'package:kasteelhuizeharmelen/widgets/functions.dart';

// website
final webURL = Uri.parse(
  'https://www.kasteelhuizeharmelen.nl/nieuws/catering/',
);

// particulier page
class ParticulierPage extends StatefulWidget {
  const ParticulierPage({super.key});

  @override
  _ParticulierPageState createState() => _ParticulierPageState();
}

class _ParticulierPageState extends State<ParticulierPage> {
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
        Padding(
          padding: const EdgeInsets.only(
            top: 95,
            bottom: 80,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Particulier',
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

                Text(
                  'Kasteel Huize Harmelen richt zich in principe uitsluitend op de '
                  'zakelijke, B2B markt maar voor kleinschalige, exclusieve particuliere '
                  'bijeenkomsten zijn er in overleg ook mogelijkheden. Uiteraard kunt '
                  'u in geval van twijfel altijd contact met ons opnemen om te kijken '
                  'wat de mogelijkheden zouden kunnen zijn. ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "CustomFont",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 68, 53),
                    decoration: TextDecoration.none,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Voorbeelden van mogelijke activiteiten: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Bold",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 41, 68, 53),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),

                Text.rich(
                  TextSpan(
                    text: '',
                    style: TextStyle(
                      fontFamily: "CustomFont",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 41, 68, 53),
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: '- High-Tea Exclusive: ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text:
                            'een High-Tea om nooit te vergeten, met '
                            'diverse zoete en hartige, ter plekke klaargemaakte verwennerijen. '
                            'Wij verzorgen deze High-Tea voor groepen vanaf circa 12 personen '
                            '(zowel zakelijk als particulier). Het gehele kasteel is dan helemaal '
                            'voor uzelf, uw familie en vrienden.\n\n', // Normal text again
                      ),
                      TextSpan(
                        text:
                            '- Bruiloftslunches en/of recepties: ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text:
                            'in een exclusieve, kleinschalige setting kunt u hiervoor bij ons terecht. '
                            'Uiteraard heeft u ook hierbij het kasteel helemaal voor uzelf, '
                            'uw famlie en vrienden.\n\n', // Normal text again
                      ),
                      TextSpan(
                        text: '- Lezingen en concertsessies.\n\n', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text: '- Foto-shoots.\n\n', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text: '- Beauty vriendinnenmiddag: ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text:
                            'een dagdeel met als start een uitgebreide, ter plekke '
                            'voor u klaargemaakte, luxe lunch met gezonde ingredienten '
                            'en daarna een huid -en/of nageladvies van een professionele '
                            'consulente. Minimaal 10 personen. \n\n', // Normal text again
                      ),
                      TextSpan(
                        text:
                            '- Ervaar lekker eten zonder gewichttoename: ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(
                        text:
                            'een dagdeel supergezond lunchen of dineren met ter plekke '
                            'voor u klaargemaakte heerlijke en eerlijke (biologische) gerechten. '
                            'Keuze uit zowel vis, vlees -en vegetarische gerechten; '
                            'de receptuur krijgt u mee naar huis. Aanwezigheid van een '
                            'ervaren dietiste met tips en valkuilen en om vragen te beantwoorden. '
                            'Minimaal 12 personen. \n\n', // Normal text again
                      ),

                      TextSpan(
                        text: '- Private dining.\n\n', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),

                      TextSpan(
                        text: '- Uitvaart & condoleance.\n', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                    ],
                  ),
                ),

                // line
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Divider(color: Colors.grey, thickness: 1),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: Text(
                    'Catering:',
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
                  onPressed: () => navigate(context, 100, CateringPage()),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Bel of mail ons voor meer informatie en/of een prijsopgave. '
                    'U krijgt altijd binnen 24 uur een reactie.',
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

                Container(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Particulier extends StatelessWidget {
  const Particulier({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
