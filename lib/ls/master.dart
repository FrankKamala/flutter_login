import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailWidget.dart';

class Master extends StatefulWidget{
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master>{
  var isLarge =false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(

    ),
     body: OrientationBuilder(builder: (context, orientation) {
       if (MediaQuery.of(context).size.width > 600) {
         isLarge = true;
       } else {
         isLarge = false;
       }

       //return
       return Row(children: <Widget>[
         // Expanded(
         //  child: OurWidget(){
         //
         //  },
         // ),
         // isLarge ? Expanded(child: DetailWidget()) : Container(),
       ]);

     }),

   );
  }
}