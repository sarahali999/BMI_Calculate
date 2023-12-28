import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constants.dart';
import 'results_page.dart';
import 'round_icon.dart';
import 'Re_card.dart';
import 'button_button.dart';
import 'icon_contect.dart';
import 'calculate_brain.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender? selectGender;
  int h=180;
  int w=60;
  int age=19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator', )),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
          children: <Widget>[
            Expanded(
             child: Recode(
               onpress: (){
                 setState(() {
                   selectGender = Gender.male;

                 });
               },
               colour: selectGender==Gender.male ?kactivecolor: kinactivecolor,
               cardchild: iconcontect(icon:FontAwesomeIcons.mars ,
               label: "MALE",),


             ),

             ),
            Expanded(

              child: Recode(
                onpress: (){
                  selectGender=Gender.female;
                },
            colour:
            selectGender == Gender.female ? kactivecolor : kinactivecolor,
                cardchild: iconcontect(icon:FontAwesomeIcons.venus,
                  label: "FEMALE",
                ),
                  ),
    ),

       ],
    ),

    ),
          Expanded(
            child: Recode(
                colour: kactivecolor,
                cardchild: Column(
                  children: <Widget>[
                  Text('HEIGHT',
                  style: klabelTExt,
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(h.toString(),
                            style:kNumberTextStyle
                        ),
                        Text('cm',
                       style: klabelTExt,
                        ),
                      ],
                    ),SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderThumbShape(pressedElevation: 30.0),
                      ),
                        child: Slider(
                        value: h.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            h=newValue.round();
                          });
                        },

                      ),
                    ),
    ],
    ),

          ),



      ),

       Expanded(child: Row(
        children: <Widget>[
        Expanded(

         child: Recode(
          colour: kactivecolor,
           cardchild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text('WEIGHT',style: klabelTExt,
               ),
               Text(
                 w.toString(),
                 style: kNumberTextStyle,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget> [
                 RoundIcon(
                   onPressed: (){
                     setState(() {
                       w++;
                     });
                   },
                   icon: FontAwesomeIcons.plus,),
                   RoundIcon(
                     onPressed: (){
                       setState(() {
                         w--;
                       });
                     },
                     icon: FontAwesomeIcons.minus,),

                 ],

               )
             ],
           ),
         ),
          ),


          Expanded(

           child: Recode(
             colour:kactivecolor ,
             cardchild: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('AGE',style: klabelTExt,
                 ),
                 Text(
                   age.toString(),
                   style: kNumberTextStyle,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:<Widget> [
                     RoundIcon(
                       onPressed: (){
                         setState(() {
                           age++;
                         });
                       },

                       icon: FontAwesomeIcons.plus,),
                     RoundIcon(
                       onPressed: (){
                         setState(() {
                           age--;
                         });
                       },
                       icon: FontAwesomeIcons.minus,),

                   ],

                 )
               ],
             ),
    ),
    ),
      ],
      )

         ),
          buttombutton(
            buttontitle: 'CALCULATE',
            onTap: (){
              CalculateBrain clc=CalculateBrain(height: h, weight: w);
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Resultpage(
                bmires: clc.calculateBMI(),
                ResText: clc.getResult(),
                interpretation: clc.getInter(),
              ),),
            );},
          ),
        ],

      )
    );

  }}
