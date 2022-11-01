import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonder/Util/HexColor.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List citys = <String>[
    "Amsterdam",
    "Atlanta",
    "Austin",
    "Barcelona",
    "Boston",
    "Chicago",
    "Dallas",
    "Denver",
    "Detroit",
    "Dublin",
    "Edinburgh",
    "Glasgow",
    "Houston",
    "London",
    "Los Angeles",
    "Madrid",
    "Mexico City",
    "Milan",
    "Minneapolis",
    "Montreal",
    "Nashville",
    "New Orleans",
    "New York City",
    "Nice",
    "Orlando",
    "Ottawa",
    "Palm Springs",
    "Paris",
    "Philadelphia",
    "Phoenix",
    "Rome",
    "San Antonio",
    "San Francisco",
    "Savannah",
    "Seattle",
    "Toronto",
    "Vancouver",
    "Venice",
    "Washington D.C",
  ];
  bool searchTapped = false;
  TextStyle h1TextStyle = GoogleFonts.notoSerifGeorgian(
    textStyle: TextStyle(
      fontFamily: "MillerDisplayRoman,Georgia,serif",
      color: headingTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );
  TextStyle h2TextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontFamily: "MillerDisplayRoman,Georgia,serif",
      color: headingTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
  TextStyle dscTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontFamily: "MillerDisplayRoman,Georgia,serif",
      color: headingTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
  FocusNode searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: (searchTapped) ? Colors.white : bgColor,
        body: Stack(
          children: [
            // for the homescreen
            SingleChildScrollView(
              padding:
                  EdgeInsets.symmetric(horizontal: w * 0.1, vertical: h * 0.02),
              child: Column(
                children: [
                  const Text(
                    "A better way to stay",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Inspiring, award-winning design meets modern, mobile-first service. Welcome to the future of hospitality.',
                  ),
                  ListView(
                    children: [],
                  )
                ],
              ),
            ),

            // Search bar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: (searchTapped) ? w / 1.3 : w / 1.1,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.5,
                          spreadRadius: 0.05,
                          offset: Offset(0, 0.5),
                        ),
                      ]),
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        searchTapped = !searchTapped;
                        debugPrint(searchTapped.toString());
                      });
                    },
                    decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: ''' Try "San Diego" ''',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                ),
              ],
            ),
            // search list
            Visibility(
              visible: (searchTapped),
              child: Container(
                width: w,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: ListView.builder(
                    itemCount: citys.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: h * 0.05,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                const Icon(Icons.location_on),
                                Text(citys[index]),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
