
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme{
  static ThemeData lighttheme(BuildContext context)=>ThemeData(primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: crem,
      buttonColor: darkblue,
      accentColor: darkcrem,

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
          , toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6
      )
  );
  static ThemeData darktheme(BuildContext context)=>ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      cardColor: Colors.black,
    canvasColor: darkcrem,
    buttonColor: lightblue,
    accentColor: Colors.white,

    appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white)
          , toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static Color crem=Color(0xfff5f5f5);
  static Color darkcrem= Vx.gray800;
  static Color darkblue=Color(0xff403b58);
  static Color lightblue= Vx.indigo500;
}
