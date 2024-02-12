import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const Color logo = Color(0xFF0029CC);
  static const Color primary = Color(0xFF0063E6);
  static const Color lightGrey = Color(0xFF757575);
  static const Color lightBlue = Color(0xFF8AB7F4);
  static const Color darkGrey = Color(0xFF575757);
  static const Color lightPrimary = Color(0xFF3382EB);
}

class AppImages {
  static const String logo = "assets/logo.png";
  static const String login = "assets/login.png";
  static const String facebook = "assets/G.png";
  static const String insta = "assets/F.png";
  static const String google = "assets/insta.png";
  static const String signup = "assets/signup.png";
  static const String reset = "assets/reset.png";
}

class AppStyles {
  static TextStyle rubik14 = GoogleFonts.rubik(
    textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColor.lightPrimary,
        letterSpacing: .5),
  );

  static TextStyle rubikDefault = GoogleFonts.rubik(
    textStyle: const TextStyle(color: AppColor.primary, letterSpacing: .5),
  );

  static TextStyle rubik14darkgrey = GoogleFonts.rubik(
    textStyle: const TextStyle(
        fontSize: 14, color: AppColor.darkGrey, letterSpacing: .5),
  );
  static TextStyle rubik20darkgrey = GoogleFonts.rubik(
    textStyle: const TextStyle(
        fontSize: 16, color: AppColor.darkGrey, letterSpacing: .5),
  );

  static TextStyle rubik28 = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontSize: 28,
      color: Colors.black,
      letterSpacing: .5,
      fontWeight: FontWeight.w700,
    ),
  );
}

class AppDivider {
  static const height10 = SizedBox(
    height: 20,
  );
}
