import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/loginpage.dart';
import 'package:whatsapp_clone/mainscreen.dart';
import 'package:whatsapp_clone/statuspage.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.black87,
      ),
      home: Anim(),
      debugShowCheckedModeBanner: false,
    ));

class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> iconAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => secondScreen());
  }

  Function secondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0Xff075E54)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.chat,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'Welcome To Scrap Chat',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30.0),
                      ),
                      new Text(
                        'Bringing Kenya Together',
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.cyan),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.cyan,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Connecting People',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WhatsAppHome();
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp ",
      theme: new ThemeData(
          primaryColor: new Color(0Xff075E54),
          accentColor: new Color(0xff25D366)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          elevation: 0.7,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
           
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                text: 'CHATS',
              ),
              new Tab(
                text: 'STATUS',
              ),
              new Tab(
                text: 'CALLS',
              )
            ],
          ),
          actions: <Widget>[
            new Icon(Icons.network_wifi),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Icon(Icons.search),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Icon(Icons.chat),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Icon(Icons.more_vert),
          ],
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            //camera screen
            new Center(
              child: new Text('camera'),
            ),
            //chat screen
            ChatPage(),
            // status screen
            Status(),
            //calls screen
            CallPage()
          ],
        ),
      ),
    );
  }
}
