import 'package:flutter/material.dart';

class HadethScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(184, 0, 0, 0),
        width: 200,
        height: 200,
        child: Center(
          child: Text('       under maintenance !!!',style: TextStyle(
            fontSize: 25, 
            color: Colors.redAccent
          ),),
        ),
      ),
    );
  }
}