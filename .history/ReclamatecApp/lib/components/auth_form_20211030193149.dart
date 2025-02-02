// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:chat/core/models/auth_form_data.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final void Function(AuthFormData) onSubmit;

  const AuthForm({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _formData = AuthFormData();

  void _submit() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    widget.onSubmit(_formData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(_formData.isLogin ? 'Entrar' : 'Cadastrar',
                        style: TextStyle(
                            fontSize: 65.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 50),
              if (_formData.isSignup)
                TextFormField(
                  key: ValueKey('name'),
                  initialValue: _formData.name,
                  onChanged: (name) => _formData.name = name,
                  style: TextStyle(color:Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                        borderSide: BorderSide.none,
                        //borderSide: const BorderSide(),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: "WorkSansLight"),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Usuário'),
                  validator: (_name) {
                    final name = _name ?? '';
                    if (name.trim().length < 5) {
                      return 'Nome deve ter no mínimo 5 caracteres.';
                    }
                    return null;
                  },
                ),
                SizedBox(height:30),
              TextFormField(
                key: ValueKey('email'),
                initialValue: _formData.email,
                onChanged: (email) => _formData.email = email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white, fontFamily: "WorkSansLight"),
                    filled: true,
                    fillColor: Colors.white24,
                    hintText: 'E-mail'),
                validator: (_email) {
                  final email = _email ?? '';
                  if (!email.contains('@')) {
                    return 'E-mail informado não é válido.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                key: ValueKey('password'),
                initialValue: _formData.password,
                onChanged: (password) => _formData.password = password,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_sharp,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white, fontFamily: "WorkSansLight"),
                    filled: true,
                    fillColor: Colors.white24,
                    hintText: 'Senha'),
                validator: (_password) {
                  final password = _password ?? '';
                  if (password.length < 6) {
                    return 'Senha deve ter no mínimo 6 caracteres.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextButton(
                child: Container(
                  height: 50.0,
                  width: 200,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffF1768F),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          _formData.isLogin ? 'Entrar' : 'Cadastrar',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
                onPressed: _submit,
              ),
              SizedBox(height: 30,),
              TextButton(
                child: Text(
                  _formData.isLogin
                      ? 'Criar uma nova conta?'
                      : 'Já possui conta?',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    _formData.toggleAuthMode();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
