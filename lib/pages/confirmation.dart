import 'package:flutter/material.dart';

import '/pages/widgets/elevated_button.dart';

class ScreenConfirmation extends StatelessWidget {
  const ScreenConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    final TextEditingController _emailController = TextEditingController();

    final RegExp _emailValid = RegExp(
        "[a-zA-Z0-9.a-zA-Z0-9 .! #%&'*+-/ =? ^_'{| }~]+@[a-zA-Z0-9]+.[a-zA-Z]+");
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //==========formfield==========================
              TextFormField(
                controller: _emailController,
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
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
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

              ElevatedButtonWidget(
                  childtext: "Create Account",
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
