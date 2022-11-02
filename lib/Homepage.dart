import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonder/Util/HexColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchTapped = false;
  TextStyle h1TextStyle = GoogleFonts.notoSerifGeorgian(
      textStyle: TextStyle(
          fontFamily: "MillerDisplayRoman,Georgia,serif",
          color: headingTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600));
  TextStyle h2TextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: headingTextColor, fontSize: 16, fontWeight: FontWeight.w600));
  TextStyle dscTextStyle =
      GoogleFonts.poppins(color: dscTextColor, fontSize: 12);

  List cities = <String>[
    "Amsterdam",
    "Atlanta",
    "Austin",
    "Barcelona",
    "Boston",
    "Chicago",
    "Dallas",
    "Denver",
    "Dubai",
    "Dublin",
    "Edinburgh",
    "Glasgon",
    "Houston",
    "London",
    "Los Angeles",
    "Madrid",
    "Maxico City",
    "Miami",
    "Milan",
    "Minneapolis",
    "Montreal",
    "Nas",
    "Amsterdam",
    "Atlanta",
    "Austin",
    "Barcelona",
    "Boston",
    "Chicago",
    "Dallas",
    "Denver",
    "Dubai",
    "Dublin",
    "Edinburgh",
    "Glasgon",
    "Houston",
    "London",
    "Los Angeles",
    "Madrid",
    "Maxico City",
    "Miami",
    "Milan",
    "Minneapolis",
    "Montreal",
    "Nas"
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: (searchTapped) ? Colors.white : bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * 0.05, vertical: h * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.1,
                  ),
                  buildText(
                      h,
                      w,
                      // "A world Of Choice",
                      "Find your gateway",
                      h1TextStyle),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  buildText(
                      h,
                      w,
                      "Our spaces are designed for comfort-whether you're working, relaxing, or craving some space.",
                      dscTextStyle),
                  buildListView(
                      h,
                      w,
                      w * 0.5,
                      7,
                      'https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png',
                      "Title",
                      "description"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.2,
                      width: w,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(69, 120, 155, 166),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildText(
                              h, w, "Book with peace of mind", h2TextStyle),
                          buildText(
                              h, w, "-Professionally cleaned", dscTextStyle),
                          buildText(
                              h, w, "-Contact-free entry &24/7", dscTextStyle),
                          buildText(h, w, "-Flexible cancellation policy",
                              dscTextStyle),
                        ],
                      ),
                    ),
                  ),
                  buildText(h, w, "40+ cities to explore", h1TextStyle),
                  buildListView(
                      h,
                      w,
                      w * 0.3,
                      7,
                      'https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png',
                      "Title",
                      "dsc"),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  buildText(h, w, "Featured Sonders", h1TextStyle),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  buildText(
                      h,
                      w,
                      "From spacious apartments to sunny studios, each Sondar is designed to comfort and delight.",
                      dscTextStyle),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  buildListViewPrice(
                      h,
                      w,
                      w * 0.5,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                      "stack"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.2,
                      width: w,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(213, 235, 174, 9),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildText(
                              h, w, "Stay longer, save more", h2TextStyle),
                          buildText(
                              h, w, "With discounts up tp:", dscTextStyle),
                          buildText(h, w, "30% off 7+ nights", dscTextStyle),
                          buildText(h, w, "40% off 30+ nights", dscTextStyle),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // TextFormField
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.01,
              vertical: h * 0.02,
            ),
            child: Row(
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
                          spreadRadius: 0.5,
                          offset: Offset(0, 0.5),
                        )
                      ]),
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        searchTapped = !searchTapped;
                      });
                    },
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: ''' Try "San Diego" ''',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: searchTapped,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          searchTapped = !searchTapped;
                        });
                      },
                      child: Text(
                        "Cancel",
                        style: h2TextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ListView
          Visibility(
            visible: (searchTapped),
            child: Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          height: h * 0.05,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on),
                              Text(
                                cities[index],
                                style: dscTextStyle,
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget buildText(double h, double w, String text, TextStyle textStyle) {
    return Text(
      text,
      style: textStyle,
    );
  }

  Widget buildListView(double h, double w, double itemWidth, int count,
      String url, String title, String dsc) {
    return SizedBox(
      height: h * 0.3,
      width: w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.down,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: count,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, right: 8, bottom: 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      url,
                      height: h * 0.15,
                      fit: BoxFit.fill,
                      width: itemWidth,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: h * 0.0,
                // ),
                buildText(h, w, title, h2TextStyle),
                buildText(h, w, dsc, dscTextStyle),
              ],
            );
          }),
    );
  }

  Widget buildListViewPrice(double h, double w, double itemWidth, int count,
      String url, String title, String dsc, String stack) {
    return SizedBox(
      height: h * 0.3,
      width: w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.down,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: count,
          itemBuilder: (context, index) {
            return Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, right: 8, bottom: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        url,
                        height: h * 0.15,
                        fit: BoxFit.fill,
                        width: itemWidth,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: h * 0.0,
                  // ),
                  buildText(h, w, title, h2TextStyle),
                  buildText(h, w, dsc, dscTextStyle),
                ],
              ),
              Positioned(
                top: h * 0.02,
                left: w * 0.05,
                child: Container(
                  height: h * 0.025,
                  width: w * 0.3,
                  color: Colors.white,
                  child: const Text("From MX\$1626"),
                ),
              )
            ]);
          }),
    );
  }
}
