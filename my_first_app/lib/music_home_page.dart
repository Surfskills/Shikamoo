import 'package:flutter/material.dart';
import 'package:my_first_app/music_list_page.dart';
import 'package:my_first_app/notifications_page.dart';
import 'package:my_first_app/payment_page.dart';
import 'package:my_first_app/settings_page.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int activeIndex = 0;
  List<Widget> pages = [
    MuscListPage(),
    PaymentPage(),
    NotificationsPage(),
    SettingsPage()
  ];
  final GlobalKey<ScaffoldState>_scaffoldState =GlobalKey<ScaffoldState>();
// This is for the darwer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState, 
      // Bring the global key here
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 240,
        child: Column(
          children: [
            DrawerHeader(child: ListTile(
              title: Text("Fred"),
            ))

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Payments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        currentIndex: activeIndex,
      ),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.black,
        leadingWidth: 150,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              _scaffoldState.currentState!.openDrawer();          },
            child: Text(
              "Tracks",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: pages[activeIndex],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}