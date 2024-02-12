import 'package:flutter/material.dart';

class FormfieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obsqureFlag;
  final bool suffixFlag;
  final TextEditingController customcontroller;
  final isPassword;

  const FormfieldWidget(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.obsqureFlag = false,
      this.suffixFlag = false,
      this.isPassword = false,
      required this.customcontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: customcontroller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          "please enter a vailid entry";
        }
      },
      keyboardType:
          isPassword ? TextInputType.number : TextInputType.emailAddress,
      obscureText: obsqureFlag ? true : false,
      decoration: InputDecoration(
          labelText: labelText.toUpperCase(),
          labelStyle: const TextStyle(color: Color(0xFF757575)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
          suffixIcon: suffixFlag
              ? const Icon(
                  Icons.remove_red_eye_outlined,
                )
              : null,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Color(0xFFD1D1D1),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            borderSide: BorderSide(
              color: Color(0xFFD1D1D1),
            ),
          )),
    );
  }
}
