import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> iconAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000));

    iconAnimation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    iconAnimation.addListener(() => this.setState(() {}));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Function whatsApp() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Myapp()));
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: AssetImage('assets/back.jpg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // new FlutterLogo(
              //   size: iconAnimation.value * 100,
              //  ),
              new Icon(
                Icons.chat,
                color: Color(0Xff075E54),
                size: iconAnimation.value * 100,
              ),
              new Form(
                child: Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.teal, fontSize: 20.0))),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            //hintText: 'Username',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            //hintText: 'Password',
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Icon(Icons.send),
                          onPressed: () => whatsApp(),
                          splashColor: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
