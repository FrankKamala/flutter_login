import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:split_view/split_view.dart';


// ignore: must_be_immutable
class LandPage extends StatelessWidget {
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
          child: LandingPage(),
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
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soop PoS"),
        backgroundColor: Colors.red,
      ),
      body: SplitView(
        initialWeight: 1.0,
        view1: SplitView(
          viewMode: SplitViewMode.Horizontal,
          view1: Container(
            child: Center(
                child: Text("View")
            ),
            color: Colors.white,
          ),
          view2: Column(

            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("#4473c5"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.today),
                        Text("Begin Table Service",style: TextStyle(
                          fontSize: 19,)
                        ),
                      ],
                    )

                ),

              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("#00af50"),
                    borderRadius: BorderRadius.circular(30.0)
                ),

                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.fastfood),
                        Text("Quick Order",style: TextStyle(
                          fontSize: 19,)),
                      ],
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                // margin: const EdgeInsets.only(top: 10, left: 400, right: 400),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("#ffc000"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.local_shipping),
                        Text("Delivery",style: TextStyle(
                          fontSize: 19,)),
                      ],
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("#ed7d31"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.open_in_new),
                        Text("Open Check",style: TextStyle(
                          fontSize: 19,)),
                      ],
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("#70ad46"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.supervisor_account),
                        Text("Manager Screen",style: TextStyle(
                          fontSize: 19,)),
                      ],
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5,left: 20,right: 20),
                height: 70,
                decoration: BoxDecoration(
                    color: Hexcolor("##a7cf3a"),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.exit_to_app),
                        Text("Sign Out",style: TextStyle(
                          fontSize: 19,
                        ),),
                      ],
                    )

                ),
              )
            ],
          )
        ),
        view2: Container(
          child: Center(
            child: Text("View3"),
          ),
          color: Colors.green,
        ),
        viewMode: SplitViewMode.Vertical,
      ),
    );
  }
}
