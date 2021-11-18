// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

  int currentIndex = 0;
  final screens = [
    Center(
      child: Bu,
    )
  ];
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15162d),
      body: Center(
          child: Text(
        "Home",
        style: TextStyle(fontSize: 60, color: Colors.white),
      )),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xffF1768F),
        backgroundColor: Color(0xff15162d),
        unselectedItemColor: Colors.white,
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
              backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: '',
              backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: '',
              backgroundColor: Colors.black54),
        ],
      ),
    );
  }
}
