import 'package:flutter/material.dart';
import 'package:sonder/Util/HexColor.dart';
import 'package:sonder/Util/styles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> imagelist = [
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
                  children: [
                    Container(
                      height: h * 0.07,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          color: btColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.search,
                          ),
                          Text("London"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Container(
                      height: h * 0.07,
                      width: w * 0.5,
                      decoration: BoxDecoration(
                          color: btColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(child: Text("Address or Area")),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: h * 0.06,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          color: btColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(child: Text("Check -> Check-")),
                    ),
                    Container(
                      height: h * 0.06,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                          color: btColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(child: Text("Filters")),
                    ),
                    Container(
                      height: h * 0.06,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                          color: btColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(child: Text("Sort")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {}, child: Text("")),
                    TextButton(onPressed: () {}, child: Text("")),
                  ],
                ),
                Container(
                  height: h * 0.3,
                  width: w,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "You're saving 15% on this\nstay.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Text(
                                "Members get 15% off by booking directly with us and great deals on longer stays. Simply sign up at the time of booking to join.",
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.08,
                ),
                Text(
                  "The Henry",
                  style: h1TextStyle,
                ),
                Text(
                  "Bayswater, London",
                  style: h2TextStyle,
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.04,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: sbtColor),
                      child: const Center(child: Text("Air conditioning")),
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: sbtColor),
                      child: const Center(child: Text("Outdoor Space")),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.04,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: sbtColor),
                      child: Center(child: Text("Elevator")),
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: sbtColor),
                      child: Center(child: Text("Front Desk")),
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: sbtColor),
                      child: Center(child: Text("+1 more")),
                    ),
                  ],
                ),
                ListView.builder(
                    itemCount: imagelist.length,
                    itemBuilder: (context, index) {
                      return imagelist[index];
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
