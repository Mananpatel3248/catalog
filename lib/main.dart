import 'package:catalogapp/pages/HOME_PAGE.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MYAPP());

}
class MYAPP extends StatelessWidget {
  const MYAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int h = 30;
    return MaterialApp(
     //   home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple,),
      darkTheme: ThemeData(brightness: Brightness.dark),


      routes: {
        "/": (context) => loginpage(),
      }

    );



  }
}
