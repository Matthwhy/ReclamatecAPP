// ignore_for_file: camel_case_types

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
      body: Center(
        child: ElevatedButton(child: Text("O"),),

      ),
    );
  }
}