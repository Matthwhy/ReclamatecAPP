
import 'package:Reclamatec/core/models/theme.dart';
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  currentTheme.toggleTheme();
                },
                child: Text(
                  'Alterar tema',
                  style: TextStyle(
                    color: theme.accentColor,
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  AuthService().logout();
                },
                child: Text(
                  'Alternar conta',
                  style: TextStyle(
                    color: theme.accentColor,
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10,),
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
      ),
    );
  }
}
