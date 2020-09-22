import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main (){
  runApp(MenuPage());
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
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
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,

        children: <Widget>[

          Container(
            width: double.infinity,

            margin: const EdgeInsets.only(bottom:169),
            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(
               // color: Hexcolor("#a6ce38"),

                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                   alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Begin Table Service",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),
             ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 130),
            padding: EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
                //color: Hexcolor("#a6ce38"),
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Quick Order",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 100),

            padding: EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
              //color: Hexcolor("#a6ce38"),
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Delivery",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 70),

            padding: EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
              //color: Hexcolor("#a6ce38"),
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Open Check",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40,),

            padding: EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
              //color: Hexcolor("#a6ce38"),
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Manager Screen",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),),
          ),
          Container(
            margin: const EdgeInsets.only(top: 0),

            padding: EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
              //color: Hexcolor("#a6ce38"),
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
              child: FittedBox(
                  child: Text("Sign Out",
                    style: TextStyle(

                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),),
          ),
          


        ],
      ),
    );

  }
}