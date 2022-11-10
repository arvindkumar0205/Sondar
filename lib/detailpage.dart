import 'package:flutter/material.dart';
import 'package:sonder/Util/HexColor.dart';
import 'package:sonder/Util/styles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List imagelist = [
    "https://res.cloudinary.com/sonder/image/private/s--EjKW2CzF--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/389/043/original/rWy3T01y.jpg",
    "https://res.cloudinary.com/sonder/image/private/s--mYEP4TXg--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/389/049/original/Hpa6TIoY.jpg",
    "https://res.cloudinary.com/sonder/image/private/s--UrBw9dOq--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/204/424/original/HCgFKn2x.jpg",
    "https://res.cloudinary.com/sonder/image/private/s--IbA9icn7--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/204/438/original/vDDMC-z7.jpg",
    "https://res.cloudinary.com/sonder/image/private/s--NvGe9q4x--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/204/042/original/dHep2B6r.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    int CurrentIndex = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: btColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: textColor,
                            ),
                            Text(
                              "London",
                              style: TextStyle(color: textColor),
                            ),
                          ],
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: bgColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                      child: Text(
                        "Address or Area",
                        style: TextStyle(color: textColor),
                      ),
                    ),
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
                TextButton(onPressed: () {}, child: Text("The Henry")),
                TextButton(onPressed: () {}, child: Text("Bayswater,london")),
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
                Container(
                  height: h * 0.3,
                  width: w,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ListView(
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        controller: PageController(
                            initialPage: 0,
                            keepPage: true,
                            viewportFraction: 1.0),
                        children: [
                          Image.network(
                              "https://res.cloudinary.com/sonder/image/private/s--XLMs40fI--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/488/930/original/zfAvDXKw.jpg"),
                          Image.network(
                              "https://res.cloudinary.com/sonder/image/private/s--SJ4iNVxl--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/483/003/original/izVWjRws.jpg"),
                          Image.network(
                              "https://res.cloudinary.com/sonder/image/private/s--WjRtfsWn--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/483/020/original/6gcjGwve.jpg"),
                          Image.network(
                              "https://res.cloudinary.com/sonder/image/private/s--2fD_Bofh--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/488/938/original/VGi2IdsP.jpg"),
                          Image.network(
                              "https://res.cloudinary.com/sonder/image/private/s--OhckGOlW--/c_pad,h_853,q_auto,w_1280/v1/s3assets/unit_images/images/000/482/992/original/1v7razNx.jpg"),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("ROOM TYPES &NIGHTLY RATES ROOM")),

                TextButton(onPressed: () {}, child: Text("From US\$168")),
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
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Stay longer,save more",
                            style: h2TextStyle,
                          ),
                        ),
                        Text(
                          "Sav on all bookings of 7+ nights",
                          style: dscTextStyle,
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
                TextButton(onPressed: () {}, child: const Text("The Mouse")),
                TextButton(
                    onPressed: () {}, child: const Text("Bloomsbury,London")),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//  ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: sbtColor,
//                           shape: const RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(30))),
//                         ),
//                         child: Text(
//                           "Elevator",
//                           style: TextStyle(color: textColor),
//                         )),