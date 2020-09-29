import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyMenuPage(),
        theme: new ThemeData(
          //primarySwatch: Colors.blue
          primarySwatch: Colors.red,
          primaryColor:
              defaultTargetPlatform == TargetPlatform.iOS ? Colors.red : null,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}

class MyMenuPage extends StatefulWidget {
  @override
  State createState() => new MPageState();
}

class MPageState extends State<MyMenuPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return new Scaffold(
      appBar: new AppBar(
        title: Text("SOOP POS"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: Card(
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 50),
                //card1
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Mode ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text(
                                'Begin Table Service',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 60.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 50),
                            FlatButton(
                              child: const Text('Quick Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            SizedBox(width: 50),
                            Container(
                              height: 60.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 50),
                            FlatButton(
                              child: const Text('Delivery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15)),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(),
            Container(
              height: 150,
              child: Card(
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 40),
                //card2
                child: Column(
                  children: <Widget>[
                    Text(
                      "Manager Activities",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Shift Review',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 10),
                            FlatButton(
                              child: const Text('Time Cards',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 10),
                            FlatButton(
                              child: const Text('Close Out Day',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            FlatButton(
                              child: const Text('Open Checks',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            FlatButton(
                              child: const Text('Change Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            FlatButton(
                              child: const Text('Look Up Customer',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(),
            Container(
              height: 150,
              child: Card(
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 40),
                //card3
                child: Column(
                  children: <Widget>[
                    Text(
                      "Cash Management",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Cash Drawers',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 50),
                            FlatButton(
                              child: const Text('Quick Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 50),
                            FlatButton(
                              child: const Text('Pay Out',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 70.0,
                              width: 1.0,
                              color: Colors.black,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            SizedBox(width: 50),
                            FlatButton(
                              child: const Text('Deposits',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Card(
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 40),
                //card4 Reports
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Reports",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Sales Reports',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16)),
                                onPressed: () {/* ... */},
                              ),
                              Container(
                                height: 70.0,
                                width: 1.0,
                                color: Colors.black,
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                              ),
                              SizedBox(width: 30),
                              FlatButton(
                                child: const Text('Menu Reports',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16)),
                                onPressed: () {/* ... */},
                              ),
                              SizedBox(width: 30),
                              Container(
                                height: 70.0,
                                width: 1.0,
                                color: Colors.black,
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                              ),
                              SizedBox(width: 30),
                              FlatButton(
                                child: const Text('Labor Reports',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16)),
                                onPressed: () {/* ... */},
                              ),
                              SizedBox(width: 30),
                              Container(
                                height: 70.0,
                                width: 1.0,
                                color: Colors.black,
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                              ),
                              SizedBox(width: 30),
                              FlatButton(
                                child: const Text(
                                  'Time Clock',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                                onPressed: () {/* ... */},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
