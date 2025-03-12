import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/contact_page.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

// route page
class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(
          backgroundPath: "assets/images/top_background.png",
          backWidget: ContactPage(),
        ),

        // page content
        Route(),
      ],
    );
  }
}

class Route extends StatelessWidget {
  const Route({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95, bottom: 80, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Routebeschrijving Huize Harmelen',
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
                  'Kasteellaan 1\n3481 GR Harmelen\n\nTel. 0348-445123',
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

              Text(
                'A12, vanuit Utrecht',
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
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Neem afslag 14-a (Harmelen). Volg borden Harmelen. In de kern van '
                  'het dorp (brug) maakt de weg een scherpe bocht naar links; daar '
                  'slaat u rechtsaf richting Vleuten. Aan het einde van de laan met '
                  'hoge bomen ziet u aan uw rechterhand een kleine stenen boogbrug. '
                  'Ga over de brug en rijd tussen de 2 witte pilaren met Huize Harmelen '
                  'het (privé) terrein op waar u aan de linkerzijde tussen de bomen gratis '
                  'kunt parkeren. Dit is een verharde ondergrond. Als u ‘strak’ parkeert '
                  'is er voldoende plaats voor alle gasten. Hartelijk dank!',
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
                'A12, vanuit Den Haag',
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
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Neem afslag 14-a (Harmelen). Volg borden Harmelen. In de kern van '
                  'het dorp (brug)  maakt de weg een scherpe bocht naar links; daar '
                  'slaat u rechtsaf richting Vleuten. Aan het einde van de laan met '
                  'hoge bomen ziet u aan uw rechterhand een stenen boogbrug. Ga over '
                  'de brug en rijd tussen de 2 witte pilaren met Huize Harmelen het '
                  '(privé) terrein op waar u aan de linkerzijde tussen de bomen gratis '
                  'kunt parkeren. Dit is een verharde ondergrond. Als u ‘strak’ parkeert '
                  'is er voldoende plaats voor alle gasten. Hartelijk dank!',
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
                'A2, vanuit Amsterdam',
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
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Neem afslag 5 (Breukelen, Kockengen). Volg de borden Kockengen - '
                  'Haarzuilens - Harmelen. Na het passeren van de gemeentegrens “Harmelen” '
                  '(bij info-bord) ziet u direct aan uw linkerhand een stenen boogbrug. '
                  'Ga over de brug en rijd tussen de 2 witte pilaren met Huize Harmelen '
                  'het (privé) terrein op waar u aan de linkerzijde tussen de bomen '
                  'gratis kunt parkeren. Dit is een verharde ondergrond. Als u ‘strak’ '
                  'parkeert is er voldoende plaats voor alle gasten. Hartelijk dank!\n\n'
                  'Vanaf de afritten van de A2 en de A12 rijdt u in ongeveer 10 '
                  'minuten naar Huize Harmelen en staat de koffie voor u klaar. '
                  'U bent van harte welkom!\n\nRon Jessurun & Anita Siebelink',
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
    );
  }
}
