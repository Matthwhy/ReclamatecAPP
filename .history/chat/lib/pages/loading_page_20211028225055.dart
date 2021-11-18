import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                'Carregando...',
                style: TextStyle(
                  color: Theme.of(context).primaryTextTheme.headline6?.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

