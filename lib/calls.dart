import 'package:flutter/material.dart';
import 'package:whatsapp_clone/callsdata.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: datacalls.length,
          itemBuilder: (context, i) => new Column(
                children: <Widget>[
                
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage(datacalls[i].imagedir),
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          datacalls[i].name,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        new Icon(Icons.call)
                      ],
                    ),
                    subtitle: new Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: new Text(
                        datacalls[i].date,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ),
                  ),
                ],
              ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.dialpad,
            color: Colors.white,
          ),
        ));
  }
}
