import 'package:flutter/material.dart';
import 'package:login_beginner/const/app.dart';
import '/pages/widgets/elevated_button.dart';

class ScreenReset extends StatelessWidget {
  const ScreenReset({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formkey = GlobalKey();
    final TextEditingController passwordController = TextEditingController();
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
                    image: AssetImage(AppImages.reset),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: const Text(
                    "Reset Password",
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
                      labelText: "new PassWord".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please Enter your new password ",
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
                      labelText: "Confirm PassWord".toUpperCase(),
                      labelStyle: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      hintText: "Please enter password again",
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
                    childtext: "Confirm",
                    onPressed: () {
                      Navigator.of(context).pop();
                      print("password changed");
                    }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
