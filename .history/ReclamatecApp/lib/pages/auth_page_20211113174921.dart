// ignore_for_file: prefer_const_constructors


import 'package:Reclamatec/components/auth_form.dart';
import 'package:Reclamatec/core/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoading = false;

  Future<void> _handleSubmit(AuthFormData formData) async {
    try {
      setState(() => _isLoading = true);

      if (formData.isLogin) {
        // Login
        await AuthService().login(
          formData.email,
          formData.password,
        );
      } else {
        // Signup
        await AuthService().signup(
          formData.name,
          formData.email,
          formData.password,

        );
      }
    } catch (error) {
      print(error.toString());
      // Tratar erro!
    } finally {
      setState(() => _isLoading = false);
    }
  }

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
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              const Color(0xa6f81f4d),
              const Color(0xa6a16ee7),
              const Color(0xa692053e)
            ],
            // ignore: prefer_const_literals_to_create_immutables
            stops: [
              0.0,
              0.0,
              1.0
            ]),
      ),
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: AuthForm(onSubmit: _handleSubmit),
              ),
            ),
            if (_isLoading)
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Color(0xffF1768F),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
