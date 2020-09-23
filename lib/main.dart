import 'package:flutter/material.dart';
import 'package:flutter_login_ui/second.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),

    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Image.asset("assets/images/logo.png",),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25), bottomRight: Radius.circular(-100), bottomLeft: Radius.circular(-100))
            ),
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30.0)
                      ,
                    ),
                    child: Center(child: Text("****",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),))
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('7',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('8'
                        ,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('9',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    )
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    )
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    )
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(
                        Icons.backspace
                      ),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      color: Colors.transparent,
                      onPressed: () {/** */},
                    ),
                    FlatButton(
                      child: Text('OK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        ),),
                      color: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuPage()),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          )
          ,
          Container(
            margin: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Hexcolor("#a6ce38"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(child: Text("Clock in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),)),

              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 20, right: 20),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Hexcolor("#a6ce38"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(child: Text("Clock out",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),)),
              )
            ],
          ),
          )

        ],
      ),
    );
  }
}
