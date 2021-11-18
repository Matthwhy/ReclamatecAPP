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
      backgroundColor: Color(0xff15162d),
      body:Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
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
        ElevTatedButton(
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
                  padding: const EdgeInsets.only(top: 0,bottom: 4,left: 30),
                  child: Text("Secretária",
                  style: TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),),
                ),
              ],
            ),
          ),
          onPressed: (){
            Navigator.popAndPushNamed(context, '/chatpage');
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
                padding: const EdgeInsets.only(top: 0,bottom: 4,left: 30),
                child: Text("CTA",
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300),),
              ),
            ],
          ),),
      ],
    ),
    );
  }
}
