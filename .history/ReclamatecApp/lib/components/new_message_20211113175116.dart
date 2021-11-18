// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';


class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  String _message = '';
  final _messageController = TextEditingController();

  Future<void> _sendMessage() async {
    final user = AuthService().currentUser;

    if (user != null) {
      await ChatService().save(_message, user);
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Container(
      height: 55,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          border: Border.all(color: theme.accentColor),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                
                controller: _messageController,
                onChanged: (msg) => setState(() => _message = msg),
                
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  labelStyle: TextStyle(color: theme.accentColor),
                  hintStyle: TextStyle(
                      color: theme.accentColor, fontFamily: "WorkSansLight"),
                  hintText: 'Enviar Mensagem',
                ),
                
                onSubmitted: (_) {
                  if (_message.trim().isNotEmpty) {
                    _sendMessage();
                  }
                },
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: theme.accentColor,
            ),
            onPressed: _message.trim().isEmpty ? null : _sendMessage,
          ),
        ],
      ),
    );
  }
}
