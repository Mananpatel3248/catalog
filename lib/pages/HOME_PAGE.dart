

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int h = 30;
    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.amber,
        title: Text("catalog"),) ,
      body:Center(
        child:Container(
          child: Text("u are become a loduu $h's day"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
