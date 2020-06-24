import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/models/call_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 16.0,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(callData[index].imageUrl),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          callData[index].name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.call_made,
                              color: Theme.of(context).accentColor,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              callData[index].time,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.videocam,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    )
                  ],
                ),
                Divider(
                  indent: 65,
                )
              ],
            );
          }),
    );
  }
}
