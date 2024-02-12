import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_beginner/const/app.dart';
import '/pages/widgets/elevated_button.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formkey = GlobalKey();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final RegExp _emailValid = RegExp(
        "[a-zA-Z0-9.a-zA-Z0-9 .! #%&'*+-/ =? ^_'{| }~]+@[a-zA-Z0-9]+.[a-zA-Z]+");
    final RegExp _nameValid = RegExp("^[A-Za-z]+");
    final RegExp _passwordValid =
        RegExp("^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@!%*?&])[^\s_]{8,}");

    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 295,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(AppImages.signup),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: const Text(
                    "Sign Up",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                //==========formfield==========================
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid name";
                    } else if (value.length < 2) {
                      return "atleast enter minimjm 2 digits";
                    } else if (!_nameValid.hasMatch(value)) {
                      return "please enter valid Name";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "name".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please Enter your name here",
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
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
                ),
                AppDivider.height10,
                //=======================================
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid name";
                    } else if (value.length < 2) {
                      return "atleast enter minimjm 2 digits";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "sub name".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please Enter your sub name here",
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
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
                ),
                AppDivider.height10,
                //========================

                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid data";
                    } else if (value.length < 8) {
                      return "atleast enter minimjm 8 digits";
                    } else if (!_emailValid.hasMatch(value)) {
                      return "please enter valid email address";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "email".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please Enter your email here",
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
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
                ),
                //========================
                AppDivider.height10,
                //==========================
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid data";
                    } else if (value.length < 8) {
                      return "atleast enter minimjm 8 digits";
                    } else if (!_passwordValid.hasMatch(value)) {
                      return "please enter valid email address";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "PassWord".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please Enter your password here",
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                      ),
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
                ),
                AppDivider.height10,
                //================================================

                ElevatedButtonWidget(
                    childtext: "Create Account",
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Confirmation");
                      // if (_formkey.currentState!.validate()) {
                      //   print("validation true");
                      // }
                    }),
                AppDivider.height10,
                Text("Already have an account ?",
                    style: AppStyles.rubik20darkgrey),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Sign  In",
                    style: AppStyles.rubik14,
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
