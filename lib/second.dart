import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';


void main (){
  runApp(MenuPage());
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       debugShowCheckedModeBanner: false,
     home: MyMenuPage(

     ),
       theme:new ThemeData(
           primarySwatch: Colors.blue
       )

   );
  }
}

class MyMenuPage extends StatefulWidget {
  @override

    State createState() => new MPageState();

}

class MPageState  extends State<MyMenuPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Soop Pos"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Begin Table Service"),
              trailing: Icon(Icons.table_chart),
            ),

            ListTile(
              title: Text("Quick Order"),
              trailing: Icon(Icons.fastfood),
            ),

            ListTile(
              title: Text("Delivery"),
              trailing: Icon(Icons.delivery_dining),
            ),

            ListTile(
              title: Text("Open Check"),
              trailing: Icon(Icons.view_comfortable_outlined),
            ),

            ListTile(
              title: Text("Manager Screeen"),
              trailing: Icon(Icons.admin_panel_settings),
            ),

            ListTile(
              title: Text("Sign Out"),
              trailing: Icon(Icons.exit_to_app),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
      ),
    );

  }
}