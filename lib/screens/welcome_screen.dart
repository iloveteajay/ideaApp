import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login/login_screen.dart';
import '../constants.dart';
import '../widgets/raised_button.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Welcome',
                    style: kScreenTitleStyle,
                  ),
                  SizedBox(height: 60.0),
                  RichText(
                    text: TextSpan(
                        text: 'The ',
                        style: TextStyle(fontSize: 20, height: 1.5),
                        children: <TextSpan>[
                          TextSpan(
                            text: '"IDEA APP" ',
                            style: GoogleFonts.robotoMono(
                              textStyle: TextStyle(letterSpacing: 1.0),
                            ),
                          ),
                          TextSpan(
                              text:
                                  'is about\n inspiration. It is about people\n who are searching for an idea\n or want to share their ideas\n with others.')
                        ]),
                  ),
                ],
              ),
              Container(
                  height: 300.0,
                  child: Image.asset('assets/ideaLightLogo2.png'))
            ],
          ),
          Lottie.asset('assets/watermelonAnimation.json'),
          ButtonWidget(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, LoginScreen.id),
              label: "Let's go!")
        ],
      ),
    ));
  }
}
