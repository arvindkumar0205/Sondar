import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sonder/Util/styles.dart';
import 'package:sonder/screens/nav_bar_pages/booking_page.dart';
import 'package:sonder/screens/nav_bar_pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BookingPage(),
  ];
  int _selectedIndex = 0;
   
  pages.add(HomePage());

  @override
  Widget build(BuildContext context) {
    
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          backgroundColor: Colors.blue,
          currentIndex: _selectedIndex,
          // type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.amber,
                icon: Icon(
                  Icons.calendar_month,
                  color: Color.fromARGB(255, 5, 158, 235),
                ),
                label: "Services"),
            BottomNavigationBarItem(
                backgroundColor: Colors.yellow,
                icon: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 9, 161, 236),
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                backgroundColor: Colors.deepPurple,
                icon: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 5, 157, 233),
                ),
                label: "Accpount"),
          ],
        ),
      ),
    );
  }
}
