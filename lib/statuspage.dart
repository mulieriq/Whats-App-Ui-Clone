import 'package:flutter/material.dart';
import 'package:whatsapp_clone/statusdata.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                          new Icon(Icons.more_horiz),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    )
                  ],
                ),
                new Container(
                  color: Colors.black,
                  width: 450.0,
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Recent Status',
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    new Container(
                      color: Colors.black,
                      width: 450.0,
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Viewed Status',
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                    ListTile(
                      leading: new CircleAvatar(
                        backgroundImage: AssetImage(statusData[1].statusimg),
                        foregroundColor: Colors.cyan,
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            'My Status',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: new Text('Just now'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.linked_camera,
            color: Colors.white,
          ),
        ));
  }
}
