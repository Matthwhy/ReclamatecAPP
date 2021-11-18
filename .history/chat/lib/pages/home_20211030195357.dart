import 'package:chat/core/services/auth/auth_service.dart';
import 'package:chat/pages/Setor.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class Nav extends StatefulWidget {
  Nav({
    Key? key,
  }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    SetorApp(),
    Text(
      'Acessar mensagens',
      style: TextStyle(color: Colors.white),
    ),
    Config()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
