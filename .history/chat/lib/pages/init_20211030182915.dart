import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: 600,
              height: 1000,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(0, 0)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      const Color(0xa6f81f4d),
                      const Color(0xa6a16ee7),
                      const Color(0xa692053e)
                    ],
                    stops: [
                      0.0,
                      0.0,
                      1.0
                    ]),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/logo.png')),
                          Container(
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
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 350,
                      width: 400,
                      child: Image.asset('assets/pana.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bem vindo ao reclamatec, seu aplicativo \n para entrar em contato com a fatec",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: ButtonTheme(
                        height: 40,
                        minWidth: 150,

                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Color(0xffF1768F),
                          child: Container(
                            child: Text(
                              "Entrar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthPage()),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}