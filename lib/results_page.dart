import 'package:flutter/material.dart';
import 'Re_card.dart';
import 'Constants.dart';
import 'button_button.dart';
class Resultpage extends StatelessWidget {
  Resultpage({required this.bmires,required this.interpretation,required this.ResText});

  final String bmires;
  final String ResText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding:EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResolttext,
              ),
            ),
          ),

          Expanded(

            flex: 5,
            child: Recode(
              colour: kactivecolor,

              cardchild: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ResText.toUpperCase(),
                    style: kResolttextr,
                  ),
                Text(
                  bmires,
                  style: kbmi,
                ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kbmiresult,)
                ],
              ),
            ),
          ),
          buttombutton(buttontitle:'RE_CALCULATE' , onTap:(){
            Navigator.pop(context);

          })
        ],
      ),
    );
  }
}
