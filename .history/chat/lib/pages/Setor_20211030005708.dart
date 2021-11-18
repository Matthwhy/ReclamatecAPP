// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class setor extends StatefulWidget {
  setor({Key? key}) : super(key: key);

  @override
  _setorState createState() => _setorState();
}

class _setorState extends State<setor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15162d),
      body: Center(
        child: ElevatedButton(child: Text("hi"),onPressed: (){
          Navigator.popAndPushNamed(context, '/chatpage')
        },),

      ),
    );
  }
}