import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

// zakelijk page
class ZakelijkPage extends StatefulWidget {
  const ZakelijkPage({super.key});

  @override
  _ZakelijkPageState createState() => _ZakelijkPageState();
}

class _ZakelijkPageState extends State<ZakelijkPage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(backgroundPath: "assets/images/top_background.png"),

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
                    'Zakelijk',
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
                  'Kasteel Huize Harmelen is s morgens geopend vanaf 08.30 uur.',
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
                    'Wij hebben voor u beschikbaar:',
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

                Text(
                  '- De Donjon: geschikt voor maximaal 22 - 25 personen\n'
                  '- De Kasteelkamer, met terras aan de slotgracht: geschikt voor 8 - 10 personen',
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
                    'Voor bedrijven en instellingen hebben wij de volgende mogelijkheden:',
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

                Text(
                  '- Huur per dagdeel van 4 uur:\n'
                  ': Ochtend-dagdeel: 08.30 - 12.30 uur\n'
                  ': Middag-dagdeel: 13.00 - 17.00 uur\n'
                  ': Avond-dagdeel: 18.00 - 22.00 uur\n\n'
                  '- 4-uursarrangement (onbeperkt koffie, thee en een zoete verwennerij)\n'
                  '- 4-uursarrangement met uitgebreide lunch\n'
                  '- 8-uursarrangement met uitgebreide lunch\n',
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
                    'Bij Kasteel Huize Harmelen wordt de volledige catering zichtbaar, '
                    'ter plekke voor u klaargemaakt waarbij wij uitsluitend werken met '
                    'dagverse (biologische) ingredienten. Met speciale (dieet)wensen van '
                    'onze gasten wordt uiteraard volledig rekening gehouden. Aan kwaliteit '
                    'doen wij geen concessies. U bent de gehele dag door welkom in onze keuken!',
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

                // line
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Divider(color: Colors.grey, thickness: 1),
                ),

                Text(
                  '- Diners in overleg. Deze zijn uitsluitend te boeken in combinatie '
                  'met de huur van 1 extra avonddagdeel.\n'
                  '- Bij boeking van slechts 1 (gedeeltelijk) dagdeel hanteren '
                  'wij een toeslag van 50%.\n'
                  '- Bij boeking van een avonddagdeel hanteren wij een toeslag van 50%.\n'
                  '- Bij weekendboekingen hanteren wij een toeslag van 50%.\n\n'
                  '- Altijd kosteloos break-out ruimtes tot uw beschikking.\n'
                  '- Gratis voor de ingang parkeren op eigen terrein.\n'
                  '- Gratis WiFi aanwezig.\n\n'
                  '- Uw training, vergadering of workshop in Kasteel Huize Harmelen '
                  'kunt u omlijsten met een verfrissende wandeling in de tuin of het '
                  'omringende bos.\n\n- Voor meerdaagse sessies kunt u eventueel gebruik '
                  'maken van het hotel in het dorp op slechts 5 minuten loopafstand '
                  'van onze locatie.\n',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "CustomFont",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 68, 53),
                    decoration: TextDecoration.none,
                  ),
                ),

                // line
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Divider(color: Colors.grey, thickness: 1),
                ),

                Text(
                  'Wij maken graag voor u binnen 24 uur een geheel vrijblijvende offerte op maat.\n\n'
                  'Bel of mail ons omtrent beschikbaarheid of het eventueel plaatsen '
                  'van een vrijblijvende optie in de agenda.\n',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "CustomFont",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 68, 53),
                    decoration: TextDecoration.none,
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
                        text: '- KvK ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(text: '- Utrecht: 30220509\n'),
                      TextSpan(
                        text: '- BTW ', // Bold part
                        style: TextStyle(
                          fontFamily: 'Bold', // Uses bold font
                        ),
                      ),
                      TextSpan(text: ': NL-8173.09.573\n'),
                    ],
                  ),
                ),

                Text(
                  'Voor annuleringen hanteren wij de Richtlijnen Voorwaarden '
                  'Horeca welke wij u op uw verzoek kunnen doen toekomen.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "CustomFont",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 68, 53),
                    decoration: TextDecoration.none,
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

class Zakelijk extends StatelessWidget {
  const Zakelijk({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
