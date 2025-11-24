import 'package:flutter/material.dart';

class Dicescreen extends StatefulWidget {
  const Dicescreen({super.key});

  @override
  State<Dicescreen> createState() => _DicescreenState();
}

class _DicescreenState extends State<Dicescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Row(children: [
            Image.asset("images/1.png",height: 100,width: 100,),
            Image.asset("images/2.png",height:100,width:100),

          ],)
        ],
      ),
    );
  }
}