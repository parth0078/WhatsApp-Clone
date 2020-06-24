import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/pages/call_screen.dart';
import 'package:flutterwhatsappclone/pages/camare_screen.dart';
import 'package:flutterwhatsappclone/pages/chat_screen.dart';
import 'package:flutterwhatsappclone/pages/status_screen.dart';

import 'comman/colors.dart';

class WhatsAppHomePage extends StatefulWidget {
  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List chatChoices = [
    "New Group",
    "New BroadCase",
    "WhatsApp  Web",
    "Starred messages",
    "Settings"
  ];
  List statusChoices = ["Status privacy", "Setting"];
  List callChoices = ["Clear call log", "Settings"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  void choiceAction(String choice) {
    print("Working");
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHAT",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
          controller: _tabController,
        ),
        title: Text(
          "WhatsApp",
        ),
        centerTitle: false,
        actions: <Widget>[
          /* PopupMenuButton(itemBuilder: (context){
            return
          },onSelected: choiceAction,),*/
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          PopupMenuButton(onSelected: (get) {
            print("Value : "+get);

          }, itemBuilder: (context) {
            return _tabController.index == 1
                ? chatChoices.map((x) {
                    return PopupMenuItem(
                      child: Text(x),
                      value: x,
                    );
                  }).toList()
                : statusChoices.map((x) {
                    return PopupMenuItem(
                      child: Text(x),
                      value: x,
                    );
                  }).toList();
          }),
          /*   InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {
              print("object");
              setState(() {});
              */ /*_showDialog(context);*/ /*
            },
          ),*/
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: TabBarView(
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ],
        controller: _tabController,
      ),
    );
  }
}
