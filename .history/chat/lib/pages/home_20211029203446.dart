// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js';

import 'package:chat/core/services/auth/auth_service.dart';
import 'package:chat/pages/chat_page.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  Nav({
    Key? key,
  }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    void _route(){
       Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) => ChatPage()
        ));
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff15162d),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          fixedColor: Color(0xffF1768F),
          backgroundColor: Color(0xff15162d),
          unselectedItemColor: Colors.white,
          iconSize: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              // ignore: deprecated_member_use
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              // ignore: deprecated_member_use
              title: Text(
                '',
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          selectedFontSize: 13.0,
          unselectedFontSize: 13.0,
        ),
        // ignore: missing_required_param
      ),
    );
  }
}

  
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 50,
        ),
        Container(
          // ignore: prefer_const_constructors
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 130.0, 0.0),
            child: Text(
              "Mensagens",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Setor",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                color: Color(0xff15162d),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF9D9EA3),
                      spreadRadius: 1.5,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.add_circle,
                    color: Color(0xffF1768F),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 4, left: 30),
                  child: Text(
                    "Secretária",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                
              ],
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) => ChatPage()
        ));
          },
        ),
        SizedBox(height: 40),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: Color(0xff15162d),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF9D9EA3),
                    spreadRadius: 1.5,
                    blurRadius: 1,
                    offset: Offset(0, 1))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.add_circle,
                  color: Color(0xffF1768F),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 4, left: 30),
                child: Text(
                  "CTA",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Text(
      'Acessar mensagens',
      style: TextStyle(color: Colors.white),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          // ignore: deprecated_member_use
          TextButton(
            onPressed: () {},
            child: Text(
              'Alternar conta',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              AuthService().logout();
            },
            child: Text(
              'Sair',
              style: TextStyle(
                color: Color(0xffF1768F),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  
