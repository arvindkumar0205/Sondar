import 'package:flutter/material.dart';
import 'package:sonder/Util/HexColor.dart';
import 'package:sonder/Util/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> imgList = [
  'https://res.cloudinary.com/sonder/image/private/s--XLMs40fI--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/488/930/original/zfAvDXKw.jpg',
  'https://res.cloudinary.com/sonder/image/private/s--SJ4iNVxl--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/483/003/original/izVWjRws.jpg',
  'https://res.cloudinary.com/sonder/image/private/s--2fD_Bofh--/q_auto,c_fill,f_auto,q_auto:eco,w_1280/v1/s3assets/unit_images/images/000/488/938/original/VGi2IdsP.jpg',
  'https://res.cloudinary.com/sonder/image/private/s--WjRtfsWn--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/483/020/original/6gcjGwve.jpg',
  'https://res.cloudinary.com/sonder/image/private/s--2fD_Bofh--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/488/938/original/VGi2IdsP.jpg',
  'https://res.cloudinary.com/sonder/image/private/s--oMksLqyc--/q_auto,c_fill,f_auto,q_auto:eco,w_1280/v1/s3assets/unit_images/images/000/488/937/original/Lxh3aBO9.jpg'
];

class DetailsPagein extends StatefulWidget {
  const DetailsPagein({super.key});

  @override
  State<DetailsPagein> createState() => _DetailsPageinState();
}

class _DetailsPageinState extends State<DetailsPagein> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget horizontalList1 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
            Container(
              width: 160.0,
              color: Colors.pink,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
          ],
        ));
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          h: 40,
                          w: 175,
                          i: Icons.search,
                          text: "Londan",
                          bgColor: bgColor,
                          onPressed: () {}),
                      button(
                          h: 40,
                          w: 175,
                          text: "Address or Area",
                          bgColor: bgColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Check-> Check-",
                          bgColor: bgColor,
                          onPressed: () {}),
                      button(
                          text: "Filters", bgColor: bgColor, onPressed: () {}),
                      button(text: "Sort", bgColor: bgColor, onPressed: () {}),
                    ],
                  ),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("18 in London"),
                      Text("View Map"),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 30),
                            child: Text(
                              "You're saving 15% on this\n stay.",
                              style: TextStyle(color: dscTextColor),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Color.fromARGB(255, 138, 133, 133),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Expanded(
                                child: Text(
                                  "Members get 15% off by booking directly with us and great deals on longer stays. Simply sign up at the time of booking to join.",
                                  style: dscTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //  The Henry T.button
                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "The Henry"),
                  sTButton(onPressed: () {}, text: "Bayswater,london"),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Air Conditioning",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Outdoor Space",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Elevator",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Front Desk",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "+1 more", bgColor: sbtColor, onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  // Image carouselslider
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  tButton(
                      onPressed: () {}, text: "ROOM TYPES &NIGHTLY RATES ROOM"),
                  sTButton(onPressed: () {}, text: "From US\$168"),

                  // see what's button

                  button(
                      h: 50,
                      text: "See Whats available",
                      bgColor: btnColor,
                      c: const Center(),
                      onPressed: () {}),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Container(
                      height: h * 0.3,
                      width: w,
                      color: Colors.grey[300],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Stay longer,save more",
                              style: h1TextStyle,
                            ),
                          ),
                          Text(
                            "Sav on all bookings of 7+ nights",
                            style: h2TextStyle,
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "20% off 7+ nights 25% off 30+ nights",
                            style: h2TextStyle,
                          ),
                          Text(
                            "30% off 45+ nights",
                            style: h2TextStyle,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "Flexible cancellation available",
                            style: h2TextStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Select the Flex Rate to get a full refund up to 3 days before check-in with no cancellation fees. View policy",
                              style: dscTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "Chelsea Green"),
                  sTButton(onPressed: () {}, text: "Chelsea, London"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Lounge and Work Space",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Air Conditioning",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Outdoor Space",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Elevator",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "+2more", bgColor: sbtColor, onPressed: () {}),
                    ],
                  ),

                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  tButton(onPressed: () {}, text: "ROOM TYPES &NIGHTLY RATES"),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Card(
                          child: TextButton(
                              onPressed: () {},
                              child: Column(
                                children: const [
                                  Text("Suite"),
                                  Text(
                                    "From US\$219",
                                  ),
                                ],
                              )),
                        ),
                        Card(
                          child: TextButton(
                              onPressed: () {},
                              child: Column(
                                children: const [
                                  Text("Room"),
                                  Text(
                                    "From US\$265",
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      h: 50,
                      text: "See What's available",
                      bgColor: btnColor,
                      onPressed: () {}),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "Camden Road"),
                  sTButton(onPressed: () {}, text: "Camden, London"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Air conditioning",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Luggage Storage",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "ROOM TYPES &NIGHTLY RATES"),

                  Card(
                    child: TextButton(
                        onPressed: () {},
                        child: Column(
                          children: const [
                            Text("Room"),
                            Text(
                              "From US\$142",
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      h: 50,
                      text: "See What's available",
                      bgColor: btnColor,
                      onPressed: () {}),

                  SizedBox(
                    height: h * 0.04,
                  ),
                  tButton(onPressed: () {}, text: "Edgware Road"),
                  sTButton(onPressed: () {}, text: "Edgware Road Londan"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Air conditioning",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Elevator",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Front Desk",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    children: [
                      button(
                          text: "luggage Storage",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  tButton(onPressed: () {}, text: "ROOM TYPES &NIGHTLY RATES"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Room"),
                                Text(
                                  "From US\$171",
                                ),
                              ],
                            )),
                      ),
                      Card(
                        child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Text("Suite"),
                                Text(
                                  "From US\$386",
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      h: 50,
                      text: "See What's available",
                      bgColor: btnColor,
                      onPressed: () {}),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "Kensington Gardend"),
                  sTButton(onPressed: () {}, text: "Kensington,London"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Louge and Work Space",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Elevator",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Front Desk",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Louggage Storage",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "ROOM TYPES &NIGHTLY RATES"),
                  tButton(onPressed: () {}, text: "2 Badroom"),
                  tButton(onPressed: () {}, text: "from US\$620"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      h: 50,
                      text: "See What's available",
                      bgColor: btnColor,
                      onPressed: () {}),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  tButton(onPressed: () {}, text: "The Arts Council"),
                  sTButton(onPressed: () {}, text: "Westminstr,London"),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "In unit laundry",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Stocked kecthin",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                          text: "Lounge and work Space ",
                          bgColor: sbtColor,
                          onPressed: () {}),
                      button(
                          text: "Elevator",
                          bgColor: sbtColor,
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    children: [
                      button(
                          text: "+1 more", bgColor: sbtColor, onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            enlargeCenterPage: true, height: 200),
                        carouselController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SmoothPageIndicator(
                          controller: PageController(),
                          count: imageSliders.length,
                          effect: const JumpingDotEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            jumpScale: .7,
                            verticalOffset: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),

                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Card(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               tButton(onPressed: () {}, text: "1 Badroom"),
                  //               tButton(onPressed: () {}, text: "from US\$307"),
                  //             ],
                  //           ),
                  //         ),
                  //         const Spacer(),
                  //         Card(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               tButton(onPressed: () {}, text: "2 Badroom"),
                  //               tButton(onPressed: () {}, text: "from US\$966"),
                  //             ],
                  //           ),
                  //         ),
                  //         Spacer(),
                  //         Card(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               tButton(onPressed: () {}, text: "3 Badroom"),
                  //               tButton(
                  //                   onPressed: () {}, text: "from US\$1,533"),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  button(
                      h: 50,
                      text: "See What's available",
                      bgColor: btnColor,
                      onPressed: () {}),

                  SizedBox(
                    height: h * 0.02,
                  ),
                  // myContainer(
                  //     text: "My Text",
                  //     bgColor: Colors.red,
                  //     onPressed: () {},
                  //     height: h,
                  //     width: w),
                ],
              ),
            ),
          ),
        ));
  }

  Widget button({
    double? h,
    double? w,
    IconData? i,
    Widget? c,
    required String text,
    required Color bgColor,
    required onPressed,
  }) {
    return MaterialButton(
        color: bgColor,
        height: h,
        minWidth: w,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              i,
              color: textColor,
            ),
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ],
        ));
  }

  // Widget myContainer(
  //     {double? height,
  //     double? width,
  //     required String text,
  //     required Color bgColor,
  //     required Function onPressed}) {
  //   return Container(
  //     decoration: BoxDecoration(color: bgColor),
  //     child: Text(text),
  //   );
  // }
}

Widget sTButton({
  required onPressed,
  required String text,
}) {
  return Text(
    text,
    style: GoogleFonts.abhayaLibre(
        textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: headingTextColor,
    )),
  );
}

Widget tButton({
  required onPressed,
  required String text,
}) {
  return Text(text,
      style: GoogleFonts.mirza(
          textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: headingTextColor,
      )));
}
