import 'package:flutter/material.dart';
import 'package:sonder/screens/nav_bar_pages/account_page.dart';
import 'package:sonder/screens/nav_bar_pages/booking_page.dart';
import 'package:sonder/screens/nav_bar_pages/chatpage.dart';
import 'package:sonder/screens/nav_bar_pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    BookingPage(),
    const ChatPage(),
    const AccountPage()
  ];
  static int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: Colors.blue,
          currentIndex: selectedIndex,
          // type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 100, 102, 104),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                // backgroundColor: Colors.amber,
                icon: Icon(
                  Icons.calendar_month,
                  color: Color.fromARGB(255, 100, 102, 104),
                ),
                label: "Services"),
            BottomNavigationBarItem(
                // backgroundColor: Colors.yellow,
                icon: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 100, 102, 104),
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                // backgroundColor: Colors.deepPurple,
                icon: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 100, 102, 104),
                ),
                label: "Accpount"),
          ],
        ),
      ),
    );
  }
}
