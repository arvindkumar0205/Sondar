import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sonder/Util/HexColor.dart';
import 'package:sonder/pageControler/chat.dart';
import 'package:sonder/pageControler/lobby.dart';
import 'package:sonder/pageControler/profile.dart';

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
  //  final pages = [
  //   const Page1(),
  //   const Page2(),
  //   const Page3(),
  //   const Page4(),
  // ];

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
                      w * 0.72,
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
                      w * 0.41,
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
                  Stack(children: [
                    buildListViewPrice(
                      h,
                      w,
                      w,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: h * 0.04,
                        width: w * 0.4,
                        color: Colors.white,
                        child: const Center(child: Text("From MX\$1625")),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(children: [
                    buildListViewPrice(
                      h,
                      w,
                      w,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: h * 0.04,
                        width: w * 0.4,
                        color: Colors.white,
                        child: const Center(child: Text("From \$274")),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(children: [
                    buildListViewPrice(
                      h,
                      w,
                      w,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: h * 0.04,
                        width: w * 0.4,
                        color: Colors.white,
                        child: const Center(child: Text("From \$101")),
                      ),
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.2,
                      width: w,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(212, 192, 168, 103),
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
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(children: [
                    buildListViewPrice(
                      h,
                      w,
                      w,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: h * 0.04,
                        width: w * 0.4,
                        color: Colors.white,
                        child: const Center(child: Text("From €2871")),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(children: [
                    buildListViewPrice(
                      h,
                      w,
                      w,
                      5,
                      "https://res.cloudinary.com/sonder/image/private/s--1IWrEWFN--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/545/152/original/f1lMi1lW.jpg",
                      "Title",
                      "dsc",
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: h * 0.04,
                        width: w * 0.4,
                        color: Colors.white,
                        child: const Center(child: Text("From €137")),
                      ),
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (Context) => ListView(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Denver.png',
                                        height: h * 0.4,
                                        width: w,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.18,
                            vertical: h * 0.01,
                          ),
                          child: Text(
                            'Show more',
                            style: h1TextStyle,
                          ),
                        ),
                      ),
                    ],
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
              padding: const EdgeInsets.only(top: 90.0),
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: cities.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              height: h * 0.12,
                              decoration:
                                  const BoxDecoration(color: Colors.white),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 50,
                      ),
                      child: Container(
                        height: h * 0.05,
                        width: w,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "All Cities",
                            style: h2TextStyle,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(00),
            topRight: Radius.circular(00),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Get.to(() => const HomePage());
                },
                icon: const Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  Get.to(() => const Lobby());
                },
                icon: const Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  Get.to(() => const Chat());
                },
                icon: const Icon(
                  Icons.chat_rounded,
                  size: 40,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  Get.to(() => const Profile());
                },
                icon: const Icon(
                  Icons.person_outlined,
                  size: 40,
                  color: Colors.grey,
                )),
          ],
        ),
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

  Widget buildListViewPrice(
    double h,
    double w,
    double itemWidth,
    int count,
    String url,
    String title,
    String dsc,
  ) {
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
                padding: const EdgeInsets.only(top: 16.0, right: 8, bottom: 0),
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
        },
      ),
    );
  }
}
