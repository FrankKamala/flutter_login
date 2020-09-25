import 'package:flutter/material.dart';
import 'package:flutter_login_ui/authentication.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(
          child: SignInPage(),
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                child: Center(
                  child: Image.asset("assets/images/logo.png",),
                ),
              ),
              Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.jpg"),
                        fit: BoxFit.fill
                    )

                ),

                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 300),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new Text("Login:",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 300),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new Text("Email:",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          ),),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1,left: 300, right: 300),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 20, bottom: 11, top: 11, right: 20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 300),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new Text("Password:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          ),),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1,left: 300, right: 300),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Center(child: TextField(
                        autofocus: false,
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            background: null
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 20, bottom: 11, top: 11, right: 20),
                        ),
                      )),
                    ),
                  ],
                ),

              ),
                  InkWell(
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 400, right: 400),
                      height: 50,
                      decoration: BoxDecoration(
                      color: Hexcolor("#a6ce38"),
                      borderRadius: BorderRadius.circular(30.0)
                      ),
                  child: Center(child: Text("Sign in",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),)),
                    ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AuthenticationPage()),
                    );
                  },
                  )
            ],
          )
      ),
    );
  }
}

