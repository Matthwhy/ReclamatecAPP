import 'package:chat/core/models/alterar_data.dart';
import 'package:chat/core/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  final _alterarData = AlterarData();

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
              'Sair',
              style: TextStyle(
                color: Color(0xffF1768F),
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: ,)
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
