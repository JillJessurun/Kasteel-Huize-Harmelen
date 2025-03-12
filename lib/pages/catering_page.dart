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
          ],
        ),
      ),
    );
  }
}
