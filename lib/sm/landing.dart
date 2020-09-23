import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/sm/quick_order.dart';

import 'delivery.dart';
import 'manager_screen.dart';
import 'open_check.dart';


class Landing extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soop pos',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
            ? Colors.red
            : null,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("SOOP POS"),
        elevation: defaultTargetPlatform == TargetPlatform.android ?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Elias Baya"),
              accountEmail: new Text("Eliasbaya1223@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS? Colors.blue: Colors.white,
                child: new Text("E"),
              ),),
            new ListTile(
              title: Text("Quick Order"),
              trailing: Icon(Icons.fastfood),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new QuickOrderPage()));
              },
            ),
            new ListTile(
              title: Text("Delivery"),
              trailing: Icon(Icons.delivery_dining),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new DeliveryPage()));
              },
            ),
            new ListTile(
              title: Text("Open Check"),
              trailing: Icon(Icons.view_comfortable_outlined),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new OpenCheckPage()));
              },
            ),
            new ListTile(
              title: Text("Manager Screeen"),
              trailing: Icon(Icons.admin_panel_settings),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new ManagerScreenPage()));
              },
            ),
            new Divider(),
            new ListTile(
              title: Text("Sign Out"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () => showAlertDialog(context),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: Text("Begin Table Service"),
        ),

      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("CANCEL"),
    onPressed:   () => Navigator.pop(context),
  );
  Widget continueButton = FlatButton(
    child: Text("YES"),
    onPressed:  () {},
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




