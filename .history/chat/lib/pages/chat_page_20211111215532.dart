// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers



import 'package:chat/components/messages.dart';
import 'package:chat/components/new_message.dart';
import 'package:flutter/material.dart';



class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: (){
                   Navigator.popAndPushNamed(context, '/homepage');
          
                },
              ),
              SizedBox(
                width: 40,
              ),
              Text("Secretária"),
            ],
          ),
      ),
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [Expanded(child: Messages()), NewMessage()],
        ),
      ),
      
    );
  }
}
