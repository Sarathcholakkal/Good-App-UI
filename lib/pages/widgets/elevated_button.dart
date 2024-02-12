import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_beginner/const/app.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String childtext;
  final void Function() onPressed;

  const ElevatedButtonWidget(
      {super.key, required this.childtext, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 320,
      height: 50,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primary,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          child: Text(
            childtext,
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
