import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonder/Util/HexColor.dart';

class Lobby extends StatefulWidget {
  const Lobby({super.key});

  @override
  State<Lobby> createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  TextStyle h1TextStyle = GoogleFonts.notoSerifGeorgian(
      textStyle: TextStyle(
          fontFamily: "MillerDisplayRoman,Georgia,serif",
          color: headingTextColor,
          fontSize: 30,
          fontWeight: FontWeight.w800));
  TextStyle h2TextStyle = GoogleFonts.notoSerifGeorgian(
      textStyle: TextStyle(
          fontFamily: "MillerDisplayRoman,Georgia,serif",
          color: headingTextColor,
          fontSize: 25,
          fontWeight: FontWeight.w600));
  TextStyle dscTextStyle =
      GoogleFonts.poppins(color: dscTextColor, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Lobby',
              style: h1TextStyle,
            ),
          ),
          SizedBox(
            height: h * 0.10,
          ),
          Center(
            child: Text(
              "Please Sign in to \n view your stay",
              style: h2TextStyle,
            ),
          ),
          SizedBox(
            height: h * 0.10,
          ),
          Center(
            child: MaterialButton(
              minWidth: 200.0,
              height: 65,
              color: Color.fromARGB(255, 241, 240, 237),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              elevation: 10.0,
              onPressed: () {},
              child: const Text(
                "Find my\n reservation",
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: MaterialButton(
              minWidth: 200.0,
              height: 45,
              color: Color.fromARGB(255, 204, 164, 19),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              elevation: 10.0,
              onPressed: () {},
              child: const Text(
                "Log in",
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign up',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 228, 189, 84),
                            fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
                          })
                  ]),
            ),
          ),
        ],
      ),
    ));
  }
}
