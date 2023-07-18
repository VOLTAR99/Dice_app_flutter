import 'package:flutter/material.dart';
import 'package:untitled1/style.dart';
import 'package:untitled1/dice_roller.dart';

const a=Alignment.topLeft;        //added unchangeable variables
const b=Alignment.bottomRight;    //    ''

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1,this.color2,{super.key});    //used two list of colours color1, color2

  final Color color1;              //defined 2 colors
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],       //declare two colors
          begin: a,                 //using the const variable
          end: b,                  //        ''
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 60,),
          const Style('Press the below button to roll the dice'),
          const SizedBox(height: 130,),
          Center(
          child:DiceRoller()         //called DiceRoller file
        ),],
      )
    );
  }
}