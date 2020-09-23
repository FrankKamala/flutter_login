import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrientationCheck extends StatefulWidget {
  @override
  _OrientationState createState() => _OrientationState();
}

class _OrientationState  extends  State<OrientationCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // return orientation == Orientation.portrait
          //     ? _buildVerticalLayout()
          //     : _buildHorizontalLayout();
          return Container();
        },
      ),
    );
  }
  
}
//Return widgets to fit based on LandscapeOrientation
// Widget _buildHorizontalLayout {
//   return Center(
//
// );
//}
//Return widgets to fit based on Portrait Orientation
// Widget _buildVerticalLayout {
// return Center(
//
//     );
// }