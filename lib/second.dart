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
           primarySwatch: Colors.red
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
              trailing: Icon(Icons.open_in_new),
            ),

            ListTile(
              title: Text("Open Check"),
              trailing: Icon(Icons.view_week),
            ),

            ListTile(
              title: Text("Manager Screeen"),
              trailing: Icon(Icons.supervised_user_circle),
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