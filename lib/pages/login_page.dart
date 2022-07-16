import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/img/loginimg.png"),
          Text("welcome boyy",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),)

        ],
      ),
    );



}}
