import 'package:chat/core/models/alterar_data.dart';
import 'package:flutter/material.dart';

class SetorApp extends StatefulWidget {
  SetorApp({Key? key}) : super(key: key);

  @override
  _SetorAppState createState() => _SetorAppState();
}

class _SetorAppState extends State<SetorApp> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  Color(0xff15162d),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Container(
                    height: 35, width: 35, child: Image.asset('assets/logo.png')),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'ECLAMATEC',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
          TextButton(
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
            onPressed: () {
              Navigator.popAndPushNamed(context, '/chatpage');
            },
          ),
        ],
      ),
    );
  }
}
