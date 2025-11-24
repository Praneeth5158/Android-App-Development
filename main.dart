import 'package:diceapp/Dicescreen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(Mydice());
}

class Mydice extends StatelessWidget {
  const Mydice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Dicescreen(),
    );
  }
}