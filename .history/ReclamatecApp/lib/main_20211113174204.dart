// ignore_for_file: prefer_const_constructors


import 'package:Reclamatec/core/services/notification/chat_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/models/theme.dart';
import 'pages/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

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
          home: AuthOrAppPage(),
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: currentTheme.currentTheme,
          routes: <String, WidgetBuilder>{
            '/chatpage': (BuildContext context) => ChatPage(),
            '/loginpage': (BuildContext context) => AuthPage(),
            '/init': (BuildContext context) => TelaInicial(),
            '/homepage': (BuildContext context) => Nav()
          }),
    );
  }
}
