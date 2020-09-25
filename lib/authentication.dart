import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/sm/landing.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class AuthenticationPage extends StatelessWidget {
  var isLarge = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),

    );
  }

  void checkDeviceScreenSize(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      isLarge = true;
    } else {
      isLarge = false;
    }
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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: Center(
                child: Image.asset("assets/images/logo.png",),
              ),
            ),
            Container(
              width: double.infinity,
              height: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.fill
                  )
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 5),
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
                            MaterialPageRoute(builder: (context) => Landing()),
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
              margin: const EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
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
                    margin: const EdgeInsets.only(right: 20),
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
      ),
    );
  }
}


