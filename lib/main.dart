import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/authentication.dart';
import 'package:hexcolor/hexcolor.dart';

import 'api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message = "Sign in";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bgimage.jpeg"),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 200,
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
            ),
            Container(
              width: 350,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.fill)),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "Login:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "Email:",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 1, left: 30, right: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        controller: emailController,
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
                          contentPadding: EdgeInsets.only(
                              left: 20, bottom: 11, top: 11, right: 20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "Password:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 1, left: 30, right: 30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Center(
                        child: TextField(
                      controller: passwordController,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.black, fontSize: 18, background: null),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 20, bottom: 11, top: 11, right: 20),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 393, right: 393.5),
              height: 135,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/white.jpg"),
                    fit: BoxFit.cover),
              ),
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.only(top: 0, left: 30, right: 30),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Hexcolor("#a6ce38"),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                      child: Text(
                    message,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                onTap: () async {
                  var email = emailController.text;
                  var password = passwordController.text;

                  setState(() {
                    message = "Plesase wait...";
                  });

                  var resp = await loginUser(email, password);
                  print(resp);
                  if (resp.containsKey("status")) {
                    if (resp['status'] == 1) {
                      setState(() {
                        message = "Sign in";
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AuthenticationPage()),
                      );
                    } else if (resp['status'] == 0) {
                      setState(() {
                        message = resp['message'];
                      });
                      _showToast(context);
                    }
                  } else {
                    setState(() {
                      message = "Login failed";
                    });
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Wrong username or password'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
