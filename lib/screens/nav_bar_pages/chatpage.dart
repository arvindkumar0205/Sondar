import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Chat',
                style: GoogleFonts.barlow(fontSize: 40, color: Colors.grey)),
          ),
          SizedBox(
            height: h * 0.2,
          ),
          const Center(
            child: Text(
              'Please sign in to \n view your messages',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Center(
            child: MaterialButton(
              height: h * 0.12,
              minWidth: w * 0.60,
              color: Colors.white,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Find my reservation',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: MaterialButton(
              height: h * 0.08,
              minWidth: w * 0.60,
              color: Color.fromARGB(255, 240, 197, 8),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 43, 43),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: "Don't Have an account? ",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "sign up",
                      style: TextStyle(color: Colors.deepOrange))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
