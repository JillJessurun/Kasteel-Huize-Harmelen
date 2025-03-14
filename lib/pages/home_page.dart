import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/contact_page.dart';
import 'package:kasteelhuizeharmelen/pages/fotogalerij_page.dart';
import 'package:kasteelhuizeharmelen/pages/offerte_page.dart';
import 'package:kasteelhuizeharmelen/pages/particulier_page.dart';
import 'package:kasteelhuizeharmelen/pages/zakelijk_page.dart';
import 'package:kasteelhuizeharmelen/widgets/buttons.dart';
import 'package:kasteelhuizeharmelen/widgets/design/bottom_ui.dart';
import 'package:kasteelhuizeharmelen/widgets/functions.dart';
import 'package:url_launcher/url_launcher.dart';

// HomePage converted to StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // app URLs
  final facebookURL = Uri.parse(
    'https://www.facebook.com/kasteelhuizeharmelen/',
  );
  final linkedinURL = Uri.parse(
    'https://www.linkedin.com/in/anita-siebelink-41b6451a/?originalSubdomain=nl',
  );
  final youtubeURL = Uri.parse('https://www.youtube.com/watch?v=x1Vv0x09_XE');
  final instagramURL = Uri.parse(
    'https://www.instagram.com/kasteelhuizeharmelen/',
  );
  // website
  final meetingReviewURL = Uri.parse(
    'https://meetingreview.com/evenementenlocatie/Utrecht/Harmelen',
  );

  bool _isMenuOpen = false; // State variable for menu visibility
  final ScrollController _scrollController =
      ScrollController(); // Scroll controller for scrolling

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen; // Toggle menu state
    });
  }

  // Scroll the page to the end
  void _scrollToEnd() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent / 8 * 7, // Scroll to the end
      duration: Duration(seconds: 2), // Scroll duration
      curve: Curves.easeInOut, // Smooth scrolling curve
    );
  }

  // Scroll the page to the start
  void _scrollToStart() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent, // Scroll to the beginning
      duration: Duration(seconds: 2), // Scroll duration
      curve: Curves.easeInOut, // Smooth scrolling curve
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // scrollable content
          SingleChildScrollView(
            controller: _scrollController, // connect the controller
            child: Column(
              children: [
                Stack(
                  children: [
                    // background
                    Container(
                      height:
                          MediaQuery.of(
                            context,
                          ).size.height, // Full screen height for background
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Background.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // logo at the top left
                    Positioned(
                      top: 30,
                      left: 10,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 90,
                        height: 71,
                      ),
                    ),

                    // page text
                    // make a container to get the screen size
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: // page text
                          Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Inspirerende vergaderlocatie',
                            style: TextStyle(
                              fontFamily: "CustomFont",
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // page text
                    // make a container to get the screen size
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 75),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Laat u verassen door sfeer, traditie en verwennerij!',
                            style: TextStyle(
                              fontFamily: "CustomFont",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // entire screen tap is back home
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {
                          _scrollToStart();

                          // if menu open, close it
                          if (_isMenuOpen) {
                            _toggleMenu();
                          }
                        },

                        //onPressed: _scrollToStart,
                        style: TextButton.styleFrom(
                          splashFactory:
                              NoSplash.splashFactory, // disable ripple effect
                        ),
                        child: Text(''),
                      ),
                    ),

                    // menu button (Fixed Position)
                    Positioned(
                      top: 40,
                      right: 15,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(
                          onPressed: _toggleMenu, // ✅ Now toggles the menu
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/menu.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),

                    // down button
                    // make a container to get the screen size
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: IconButton(
                          onPressed: _scrollToEnd, // Scroll to the bottom
                          icon: Image.asset(
                            'assets/images/arrow.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // scrollable content can go here
                SizedBox(
                  height: 780,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // title
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                'Welkom bij vergaderlocatie\nKasteel Huize Harmelen',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "CustomFont",
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 41, 68, 53),
                                ),
                              ),
                            ),
                            /*
                            // text
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 20,
                                right: 20,
                              ),
                              child: Text(
                                'Kasteel Huize Harmelen is een sfeervol kasteeltje voor '
                                'vergaderingen, lezingen, trainingen en workshops '
                                'gelegen in het midden van de Randstad, goed te '
                                'bereiken, met voldoende eigen parkeergelegenheid '
                                'en volledige privacy.\n\n'
                                'U kiest voor een persoonlijke, warme en kleinschalige '
                                'setting in een eeuwenoud, uit circa 1270 daterend '
                                'kasteeltje met vergaderruimte die u zal inspireren.\n\n'
                                'Wij hopen dat onze hoogwaardige klantgerichtheid en '
                                'service u zal aanspreken, prikkelen en motiveren. '
                                'Reeds vanaf 2006 staan wij hiervoor tot uw beschikking. '
                                'Een geheel vrijblijvende offerte op maat ontvangt u van '
                                'ons altijd binnen 24 uur.\n\n'
                                'Beleef Kasteel Huize Harmelen! U bent van harte '
                                'welkom. Proef de sfeer op YouTube en bekijk ook onze '
                                'beoordelingen op MeetingReview.com.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "CustomFont",
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 41, 68, 53),
                                ),
                              ),
                            ),
*/
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 20,
                                right: 20,
                              ),
                              child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                  text:
                                      'Kasteel Huize Harmelen is een sfeervol kasteeltje voor '
                                      'vergaderingen, lezingen, trainingen en workshops '
                                      'gelegen in het midden van de Randstad, goed te '
                                      'bereiken, met voldoende eigen parkeergelegenheid '
                                      'en volledige privacy.\n\n'
                                      'U kiest voor een persoonlijke, warme en kleinschalige '
                                      'setting in een eeuwenoud, uit circa 1270 daterend '
                                      'kasteeltje met vergaderruimte die u zal inspireren.\n\n'
                                      'Wij hopen dat onze hoogwaardige klantgerichtheid en '
                                      'service u zal aanspreken, prikkelen en motiveren. '
                                      'Reeds vanaf 2006 staan wij hiervoor tot uw beschikking. '
                                      'Een geheel vrijblijvende offerte op maat ontvangt u van '
                                      'ons altijd binnen 24 uur.\n\n'
                                      'Beleef Kasteel Huize Harmelen! U bent van harte '
                                      'welkom. Proef de sfeer op ',
                                  style: TextStyle(
                                    fontFamily: "CustomFont",
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 41, 68, 53),
                                    decoration: TextDecoration.none,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'YouTube', // Clickable part
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 66, 126, 84),
                                        decoration:
                                            TextDecoration
                                                .underline, // Underlined text
                                      ),
                                      recognizer:
                                          TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(youtubeURL);
                                            },
                                    ),
                                    TextSpan(
                                      text:
                                          ' en bekijk ook onze beoordelingen op ',
                                    ),
                                    TextSpan(
                                      text:
                                          'MeetingReview.com.', // Clickable part
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 66, 126, 84),
                                        decoration:
                                            TextDecoration
                                                .underline, // Underlined text
                                      ),
                                      recognizer:
                                          TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(meetingReviewURL);
                                            },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // bottom ui
                      BottomUI(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Fixed Position Content:

          // 🔥 Sliding Menu
          AnimatedPositioned(
            duration: Duration(milliseconds: 300), // Animation speed
            curve: Curves.easeInOut,
            right: _isMenuOpen ? 0 : -260, // Slide in/out
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > -1000.0) {
                  // drag right
                  _toggleMenu();
                }
              },
              child: Container(
                width: 260, // Square menu size
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 41, 68, 53),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // menu title
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Menu',
                            style: TextStyle(
                              fontFamily: "CustomFont",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      // menu buttons (Zakelijk, Particulier, etc.)
                      MenuButton(
                        text: "Zakelijk",
                        onPressed: () async {
                          navigate(context, 100, ZakelijkPage());
                        },
                      ),

                      MenuButton(
                        text: "Particulier",
                        onPressed: () {
                          navigate(context, 100, ParticulierPage());
                        },
                      ),

                      MenuButton(
                        text: "Fotogalerij",
                        onPressed: () {
                          navigate(context, 100, FotogalerijPage());
                        },
                      ),

                      MenuButton(
                        text: "Contact",
                        onPressed: () {
                          navigate(context, 100, ContactPage());
                        },
                      ),

                      MenuButton(
                        text: "Offerte aanvragen",
                        onPressed: () {
                          navigate(context, 100, OffertePage());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
