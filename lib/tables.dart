import 'package:flutter/material.dart';
import 'package:flutter_login_ui/dine.dart';
import 'package:flutter_login_ui/front.dart';

import './authentication.dart';
import 'dine.dart';
import 'front.dart';

class TableServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Table Service'),
            automaticallyImplyLeading: true,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () => {
                  Navigator.pop(context, false)
                  }),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'HELP',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ), //`Text` to display
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  )),
                  Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.view_day,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'PREVIOUS CHECKS',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ), //`Text` to display
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  )),
                  Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'LOOKUP',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ), //`Text` to display
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  )),
                  Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'SIGN OUT',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ), //`Text` to display
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  )),
              PopupMenuButton<String>(
                onSelected: (String value) {
                  switch (value) {
                    case 'Help':
                      break;
                    case 'Previous checks':
                      break;
                    case 'Switch Account':
                      showAlertDialog(context);
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'Device status'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
            bottom: TabBar(
              tabs: [Tab(text: "DINING ROOM"), Tab(text: "FRONT ROOM")],
            ),
          ),
          body: TabBarView(
            children: [
              DiningRoomScreen(),
              FrontRoomScreen(),
            ],
          ),
        ),
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Help':
        break;
      case 'Previous checks':
        break;
      case 'Switch Account':
        //showAlertDialog(context);
        break;
    }
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
      child: Text("CANCEL"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      });
  Widget continueButton = FlatButton(
    child: Text("YES"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new AuthenticationPage()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Attention !!!"),
    content: Text("Are u sure u want to sign out ?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}