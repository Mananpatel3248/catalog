import 'package:catalogapp/pages/HOME_PAGE.dart';
import 'package:catalogapp/pages/cartpage.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:catalogapp/utiles/modules.dart';
import 'package:catalogapp/width/theme.dart';
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
        debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: Mytheme.lighttheme(context),
      darkTheme: Mytheme.darktheme(context),


      routes: {
        "/": (context) => loginpage(),
        module.loginroute:(context)=>loginpage(),
        module.homeroute:(context)=>homepage(),
        module.cartpageroute:(context)=>cartpage()
      }

    );



  }
}
