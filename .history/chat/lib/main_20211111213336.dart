// ignore_for_file: prefer_const_constructors

import 'package:chat/core/services/notification/chat_notification_service.dart';
import 'package:chat/pages/auth_or_app_page.dart';
import 'package:chat/pages/chat_page.dart';
import 'package:chat/pages/home.dart';
import 'package:chat/pages/init.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatNotificationService(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AuthOrAppPage(),
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/chatpage': (BuildContext context) => ChatPage(),
            '/loginpage' : (BuildContext context) => AuthPage(),
            '/init' : (BuildContext context) => TelaInicial(),
            '/homepage': (BuildContext context) => Nav()

          }),
    );
  }
}
