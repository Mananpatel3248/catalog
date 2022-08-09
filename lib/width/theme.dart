
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lighttheme(BuildContext context)=>ThemeData(primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
          , toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6
      )
  );
  static ThemeData darktheme(BuildContext context)=>ThemeData(
      brightness: Brightness.dark
  );

  static Color crem=Color(0xfff5f5f5);
  static Color darkblue=Color(0xff403b58);
}
