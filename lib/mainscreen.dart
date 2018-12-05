import 'package:flutter/material.dart';
import 'package:whatsapp_clone/convoPage.dart';
import 'package:whatsapp_clone/maindata.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, i) => new Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConvoPage(
                                  imageUrl: dummyData[i].imageUrl,
                                  message: dummyData[i].message,
                                  name: dummyData[i].name,
                                  time: dummyData[i].time,
                                ))),
                    child: new ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(dummyData[i].imageUrl),
                        foregroundColor: Theme.of(context).primaryColor,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            dummyData[i].name,
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                          new Text(
                            dummyData[i].time,
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 14.0),
                          )
                        ],
                      ),
                      subtitle: new Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new Text(
                          dummyData[i].message,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
