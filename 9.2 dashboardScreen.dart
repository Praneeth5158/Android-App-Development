import 'package:flutter/material.dart';
import 'package:swiggy/heartscreen.dart';
import 'package:swiggy/homescreen.dart';
import 'package:swiggy/personscreen.dart';
import 'package:swiggy/searchscreen.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Homescreen(),
    Searchscreen(),
    Heartscreen(),
    Personscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
          selectedIndex = value;
          setState(() {
            
          });

        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: "Heart"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person")
      ]),
    );
  }
}
