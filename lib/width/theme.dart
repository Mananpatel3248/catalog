
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lighttheme(BuildContext context)=>ThemeData(primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.lato().fontFamily,
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
}
