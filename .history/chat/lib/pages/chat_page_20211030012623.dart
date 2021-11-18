// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers



import 'package:chat/components/messages.dart';
import 'package:chat/components/new_message.dart';
import 'package:chat/core/services/auth/auth_service.dart';
import 'package:chat/core/services/notification/chat_notification_service.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'notification_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEA15162D),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ButtomI(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: 40,
              ),
              Text("Secretária"),
            ],
          ),
          actions: [
            DropdownButtonHideUnderline(
              child: DropdownButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
                items: [
                  DropdownMenuItem(
                    value: 'logout',
                    child: Container(
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 10),
                          Text('Sair'),
                        ],
                      ),
                    ),
                  ),
                ],
                onChanged: (value) {
                  if (value == 'logout') {
                    AuthService().logout();
                  }
                },
              ),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return NotificationPage();
                    }));
                  },
                  icon: Icon(Icons.notifications),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    maxRadius: 8,
                    backgroundColor: Color(0xffF59A9A),
                    child: Text(
                      '${Provider.of<ChatNotificationService>(context).itemsCount}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [Expanded(child: Messages()), NewMessage()],
        ),
      ),
      
    );
  }
}
