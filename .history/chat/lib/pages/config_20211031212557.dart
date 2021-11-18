import 'package:chat/core/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              AuthService().logout();
            },
            child: Text(
              'Alterar tema',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(height: 10),
          // ignore: deprecated_member_use
          TextButton(
            onPressed: () {
              AuthService().logout();
            },
            
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
    );
  }
}
