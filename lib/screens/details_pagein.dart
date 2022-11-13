import 'package:flutter/material.dart';
import 'package:sonder/Util/HexColor.dart';
import 'package:sonder/Util/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                        button(h: 6, w: 200, text: "Londan", bgColor: bgColor),
                        // Expanded(
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: ElevatedButton(
                        //       onPressed: () {},
                        //       style: ElevatedButton.styleFrom(
                        //           backgroundColor: bgColor,
                        //           shape: const RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.all(
                        //                   Radius.circular(30)))),
                        //       child: Text(
                        //         "Address or Area",
                        //         style: TextStyle(color: textColor),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: bgColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Check-> Check-",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: bgColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Filters",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: bgColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Sort",
                              style: TextStyle(color: textColor),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("19 in London"),
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
                    TextButton(
                        onPressed: () {}, child: const Text("The Henry")),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Bayswater,london")),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Air Conditioning",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Outdoor Space",
                              style: TextStyle(color: textColor),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Elevator",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Front Desk",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "+1 more",
                              style: TextStyle(color: textColor),
                            )),
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
                    TextButton(
                        onPressed: () {},
                        child: const Text("ROOM TYPES &NIGHTLY RATES ROOM")),

                    TextButton(
                        onPressed: () {}, child: const Text("From US\$168")),
                    // see What's available
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(400, 50),
                          maximumSize: const Size(400, 50),
                          backgroundColor: seebtnColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        child: Text(
                          "See What's available",
                          style: TextStyle(color: textColor),
                        )),
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
                    TextButton(
                        onPressed: () {}, child: const Text("Chelsea Green")),
                    TextButton(
                        onPressed: () {}, child: const Text("Chelsea, London")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Lounge and Work Space",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Air Conditioning",
                              style: TextStyle(color: textColor),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: sbtColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              child: Text(
                                "Outdoor Space",
                                style: TextStyle(color: textColor),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: sbtColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              child: Text(
                                "Elevator",
                                style: TextStyle(color: textColor),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: sbtColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              child: Text(
                                "+2more",
                                style: TextStyle(color: textColor),
                              )),
                        ],
                      ),
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
                    TextButton(
                        onPressed: () {},
                        child: const Text("ROOM TYPES &NIGHTLY RATES")),

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

                    // see What's available
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(400, 50),
                          maximumSize: const Size(400, 50),
                          backgroundColor: seebtnColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        child: Text(
                          "See What's available",
                          style: TextStyle(color: textColor),
                        )),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Camden Road",
                          style: h1TextStyle,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Camden, London ",
                          style: h2TextStyle,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Air conditioning",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Luggage Storage",
                              style: TextStyle(color: textColor),
                            )),
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
                    TextButton(
                        onPressed: () {},
                        child: const Text("ROOM TYPES &NIGHTLY RATES")),
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
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(400, 50),
                          maximumSize: const Size(400, 50),
                          backgroundColor: seebtnColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        child: Text(
                          "See What's available",
                          style: TextStyle(color: textColor),
                        )),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Edgware Road",
                          style: h1TextStyle,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Edgware Road, London ",
                          style: h2TextStyle,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Air conditioning",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Elevator",
                              style: TextStyle(color: textColor),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Front Desk",
                              style: TextStyle(color: textColor),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sbtColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            child: Text(
                              "Luggage Storage",
                              style: TextStyle(color: textColor),
                            )),
                      ],
                    ),
                    myContainer(
                        text: "My Text",
                        bgColor: Colors.red,
                        onPressed: () {},
                        height: h,
                        width: w),
                  ]),
            ),
          ),
        ));
  }

  Widget button(
      {double? h, double? w, required String text, required Color bgColor}) {
    return MaterialButton(
        color: btColor,
        height: h,
        minWidth: w,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: textColor,
            ),
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ],
        ));
  }

  Widget myContainer(
      {double? height,
      double? width,
      required String text,
      required Color bgColor,
      required Function onPressed}) {
    return Container(
      decoration: BoxDecoration(color: bgColor),
      child: Text(text),
    );
  }
}
