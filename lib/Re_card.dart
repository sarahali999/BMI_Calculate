import 'package:flutter/material.dart';

class Recode extends StatelessWidget {
  Recode({required this.colour, this.cardchild,this.onpress});
  final Color colour;
  final Widget? cardchild;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: double.infinity,
        child: cardchild ?? SizedBox.shrink(),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
