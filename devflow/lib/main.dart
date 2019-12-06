import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Colors.brown,)); //(for color of status bar)or set color with: Color(0xFF0000FF)))
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}





//||||||||||||||| HOME PAGE ||||||||||||||||||||||||||||||
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: <Widget>[
        BgCircle(), 
        Greeting(), 
        User(), 
        Boxes(), 

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
        backgroundColor: Colors.brown
      ),

    );
  }
}

// \\\\\\\\\\\ END HOME PAGE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\

// \\\\\\\\\\\\\\\\\\ Circle WIDGET\\\\\\\\\\\\\\\\
class BgCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Transform.scale(
        scale: 82.0,
        child: Container(
          height: 10.0,
          decoration: BoxDecoration(
          color: Color(0xffA5967F),
          shape: BoxShape.circle,
          ),
        ),
      );
  }
}


// \\\\\\\\\\\\\\\\\\ END Circle WIDGEt\\\\\\\\\\\\\

// \\\\\\\\\\\\\\\\\\ GREETING WIDGET(FIRST)\\\\\\\\\\\\\
class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 21),
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: <Widget>[

              Text('WELCOME,', style: TextStyle(fontSize:20.0)),
              
            ],
          ),
        );
  }
}

// \\\\\\\\\\\\\\\\\ END GREETING \\\\\\\\\\\\\\\\\\\\\


//\\\\\\\\\\\\\\\\\ USER WIDGET(SECOND) \\\\\\\\\\\\\\
class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 41.0),
      child: Row(
        children: <Widget>[

          Text('Ugochukwu', style: TextStyle(fontSize:27.0, fontWeight: FontWeight.bold,)),
        ],
      ),
    );
  }
}


//\\\\\\\\\\\\\\\\\\ END USER WIDGET \\\\\\\\\\\\\\\\\\\



//\\\\\\\\\\\\\\\\\\\\ BOXES WIDGET \\\\\\\\\\\\\\\\\\\\\\\\

class Boxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 250.0,
          margin: const EdgeInsets.only(top: 25.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(4.0),
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                
                margin: const EdgeInsets.all(4.0),
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],

          )
    );
  }
}

//\\\\\\\\\\\\\\\\\\\\END BOXES WIDGET \\\\\\\\\\\\\\\\\\\\






