import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ConvoPage extends StatefulWidget {
  final String name;
  final message;
  final time;
  final imageUrl;
  ConvoPage({this.name, this.message, this.imageUrl, this.time});

  @override
  _ConvoPageState createState() => _ConvoPageState();
}

class _ConvoPageState extends State<ConvoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(widget.imageUrl),
            ),
            SizedBox(
              width: 7.0,
            ),
            new Text(
              widget.name,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.video_call),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 7.0,
          ),
        ],
        elevation: 0.7,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 450.0,
            color: Colors.grey,
            child: new Text('data'),
          ),
          new Text(widget.message),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4.0,
  
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.menu),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}
