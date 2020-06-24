import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/models/status_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap To add Status update"),
              leading: Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      statusData[1].imageUrl,
                    ),
                    radius: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              color: Colors.grey[300],
              height: 30,
              alignment: Alignment.topLeft,
              child: Text("Recents update"),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: statusData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        index == 0
                            ? Container()
                            : Divider(
                                height: 10,
                              ),
                        ListTile(
                          title: Text(
                            statusData[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage(statusData[index].imageUrl),
                          ),
                          subtitle: Text(
                            statusData[index].minute,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
