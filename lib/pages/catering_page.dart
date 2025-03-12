import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/particulier_page.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

// catering page
class CateringPage extends StatefulWidget {
  const CateringPage({super.key});

  @override
  _CateringPageState createState() => _CateringPageState();
}

class _CateringPageState extends State<CateringPage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(
          backgroundPath: "assets/images/top_background.png",
          backWidget: ParticulierPage(),
        ),

        // page content
        Catering(),
      ],
    );
  }
}

class Catering extends StatelessWidget {
  const Catering({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95, bottom: 80, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // content
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Catering',
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
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Feestje? Borreltje?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Bold",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 41, 68, 53),
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Vanaf heden kunt u een luxe "kasteelhapjes schotel" bestellen, '
                'uiteraard gemaakt met de beste verse biologische ingredienten. '
                'In overleg kunt u onder andere kiezen uit onderstaande hapjes. '
                'En mocht u speciale (dieet)wensen hebben of ontbreekt uw favoriete '
                'hapje....dan horen wij dat graag. Bijna alles is mogelijk! '
                'Een paar suggesties:',
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

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DefaultTextStyle(
                style: TextStyle(
                  fontFamily: "Bold",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 41, 68, 53),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 41, 68, 53),
                ),
                child: Text('Koude hapjes', textAlign: TextAlign.left),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                '- amuselepel met rivierkreeftjes en avocado\n\n'
                '- amuselepel met carpaccio van ossenhaas en truffeldressing\n\n'
                '- canape met roomkaas en zalm\n\n'
                '- canape met filet americain en uitjes\n\n'
                '- komkommer met bieslookkaas\n\n'
                '- rolletje bresaola (gedroogde ossenhaas) met rucola en parmezaan\n\n'
                '- rolletje vitello tonnatto (kalfsfricandeau en tonijnmousse)\n\n'
                '- rolletje parmaham met frisse meloen\n\n'
                '- blokje watermeloen met feta en munt\n\n'
                '- witlofblaadjes gevuld met hollandse garnalen en avocado\n\n'
                '- witlofblaadjes gevuld met hollandse garnelen en tomaat\n\n'
                '- witlofblaadjes gevuld met gerookte zalm en avocado\n\n'
                '- amuseschaaltje gevuld met tonijn/aardappelsalade\n\n'
                '- amuseschaaltje met hummus en rauwkost staafjes\n\n'
                '- reypenaar kaas met geconfijte gember\n',
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

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DefaultTextStyle(
                style: TextStyle(
                  fontFamily: "Bold",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 41, 68, 53),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 41, 68, 53),
                ),
                child: Text('Warme hapjes', textAlign: TextAlign.left),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                '- warme gehaktballetjes met verse kruiden\n\n'
                '- malse kipstukjes in satesaus\n\n'
                '- mini pastaschoteltje Bolognese\n\n'
                '- mini pastaschoteltje vegetarisch\n\n'
                '* de hapjes gaan per 10 stuks minimaal\n\n'
                '* de hapjes kunnen in overleg worden opgehaald op ons kasteel (bezorgen in overleg)\n\n'
                '* graag 48 uur van te voren bestellen (last minute in overleg)\n\n',
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
          ],
        ),
      ),
    );
  }
}
