import 'package:flutter/material.dart';
import 'Constants.dart';
class buttombutton extends StatelessWidget {
  buttombutton({@required this.onTap,@required this.buttontitle});

  final Function()? onTap;
  final String? buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(

            buttontitle.toString(),

            style: klargebutton,),
        ),
        color:kbuttomcolor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbuttomcontainerh,
      ),
    );
  }
}