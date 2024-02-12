import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:login_beginner/const/app.dart';

import '/pages/widgets/elevated_button.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    // final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final RegExp regularexp = RegExp(
        "[a-zA-Z0-9.a-zA-Z0-9 .! #%&'*+-/ =? ^_'{| }~]+@[a-zA-Z0-9]+.[a-zA-Z]+");
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 295,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(AppImages.login),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    "Log In",
                    textAlign: TextAlign.left,
                    style: AppStyles.rubik28,
                  ),
                ),
                //==========formfield==========================
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid data";
                    } else if (value.length < 8) {
                      return "atleast enter minimjm 8 digits";
                    } else if (!regularexp.hasMatch(value)) {
                      return "please enter valid email address";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "email".toUpperCase(),
                      labelStyle: const TextStyle(color: Color(0xFF757575)),
                      hintText: "Please Enter your email here",
                      hintStyle: const TextStyle(
                          color: Color(0xFFD1D1D1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 20,
                ),
                //==========================
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter an valid data";
                    } else if (value.length < 8) {
                      return "atleast enter minimjm 8 digits";
                    } else if (!regularexp.hasMatch(value)) {
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

                //================================================

                Container(
                  height: 40,
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/reset");
                    },
                    child: Text(
                      "Forget Password?",
                      style: AppStyles.rubikDefault,
                    ),
                  ),
                ),
                ElevatedButtonWidget(
                    childtext: "LogIn",
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        print("validation true");
                      }
                    }),
                buildNarrowLine(),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 44,
                  width: 150,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialButtons(logo: AppImages.facebook),
                      SocialButtons(logo: AppImages.google),
                      SocialButtons(logo: AppImages.insta)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Don’t have an account?",
                          style: AppStyles.rubik14darkgrey),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/signup");
                        },
                        child: Text(
                          "Sign  Up",
                          style: AppStyles.rubik14,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  //==============    NARROW LINES==================

  Container buildNarrowLine() {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: .5,
              color: AppColor.lightGrey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Text(
              "Or",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: .5,
              color: AppColor.lightGrey,
            ),
          )
        ],
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  final String logo;

  const SocialButtons({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 44,
        height: 44,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.lightBlue, width: 2),
        ),
        child: Center(child: Image(image: AssetImage(logo))),
      ),
    );
  }
}
