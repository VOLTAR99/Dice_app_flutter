import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();     //to minimize the consumption of memory. More optimized

class DiceRoller extends StatefulWidget{
  @override

  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{       //here in _DiceRollerState the '_' is used so that the class becomes private and can nly be used in this folder
  @override
  var currentDice=2;      //create a variable where a path declared

  void rollDice(){
    setState(() {               //setState function will rerun the UI to check any changes
      currentDice= randomizer.nextInt(6)+1;    //1 to 6
    });
  }

  Widget build(context){
    return Column(
      mainAxisSize:MainAxisSize.min ,
      children: [
        Image.asset('assets/images_dice/dice$currentDice.png'
            ,width: 200),
        const SizedBox(height:80),               // is an alternative method to create a space between the image and the textButton
        TextButton(onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(           //padding used for creating a space btw the image and the textButton
              //   top: 80
              // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 40)),
            child: const Text('Roll Dice'))],
    );
  }
}