import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
          title: Text('wojung'),
        ),
        body: Container(
          color: Colors.black12,
          child: Column(
            children: <Widget>[
              Flexible(
                child: SizedBox(
                  height: 100,
                ),
                flex: 2,
              ),
              Flexible(
                child: imageSection,
                flex: 2,
              ),
              Flexible(
                child: nameSection,
                flex: 1
              ),
              Flexible(
                child: descriptSection,
                flex: 1,
              ),
              Flexible(
                child: buttonSecttion,
                flex: 2,
              )
            ],
          ),
        )
      ),
    );
  }

  Widget nameSection = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("lee woo jung", style: TextStyle(fontSize: 45, fontFamily: 'Lacquer', color: Colors.brown)),
      Icon(FontAwesomeIcons.apple, color: Colors.brown, size: 45,)
    ],
  );

  Widget imageSection = Container(
    width: 140,
    height: 140,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      image: new DecorationImage(
        fit: BoxFit.fill,
        image: new AssetImage('images/cat.jpg')
      ),
      border: Border.all(
        color: Colors.black,
        width: 8
      )
    ),
  );

  Widget descriptSection = Container(
    child: Column(
      children: <Widget>[
        Text('MindsLab AICS Dev Team',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.brown[300]
          ),
        ),
        Text('FlUTTER Developer, senior Developer',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.brown[300]
          ),
        ),
        Divider(
          color: Colors.black,
          indent: 60,
          endIndent: 60,
        )
      ],
    ),
  );

  Widget buttonSecttion = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        width: 360,
        height: 60,
        child: RaisedButton.icon(
          color: Colors.white,
          onPressed: (){},
          icon: Icon(
            Icons.call,
            color: Colors.teal,
          ),
          label: Text(" 010-5732-1110",
            style: TextStyle(fontSize: 20,
                color: Colors.deepPurpleAccent
            ),),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 360,
        height: 60,
        child: RaisedButton.icon(

          color: Colors.white,
          onPressed: (){},
          icon: Icon(
            Icons.desktop_mac,
            color: Colors.teal,
          ),
          label: Text(" ujung@wojung.dev",
            style: TextStyle(fontSize: 20,
                color: Colors.deepPurpleAccent
            ),),
        ),
      )
    ],
  );

}
