import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Theme.of(context).accentColor,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Divider(
                  height: 10,
                  indent: 80,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    radius: 30,
                    backgroundImage: NetworkImage(chatData[index].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chatData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        chatData[index].time,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                    chatData[index].message,
                        style: TextStyle(fontSize: 14.0),
                  )),
                )
              ],
            );
          },
          itemCount: chatData.length,
        ));
  }
}
