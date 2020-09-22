import 'package:flutter/material.dart';
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
          Expanded(child: Container(
            width: double.infinity,
            height: 400,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/center.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                        child: Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: 100,
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
                        child: Text('CLEAR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18
                          ),),
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
                        child: Text('LOGIN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        color: Colors.transparent,
                        onPressed: () {/** */},
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
          ,
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      decoration: BoxDecoration(
                        color: Hexcolor("#a6ce38"),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Center(child: Text("ClockIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      padding: EdgeInsets.all(20),
                      width: 150,
                      decoration: BoxDecoration(
                          color: Hexcolor("#a6ce38"),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Center(child: Text("ClockOUT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),)),
                    )

                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
