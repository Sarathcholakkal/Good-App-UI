import 'package:flutter/material.dart';

import 'package:login_beginner/pages/flash.dart';
import 'package:login_beginner/pages/login.dart';

import 'pages/confirmation.dart';
import 'pages/reset.dart';
import 'pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const ScreenFlash(),
        "/login": (context) => const ScreenLogin(),
        "/signup": (context) => const ScreenSignup(),
        "/Confirmation": (context) => const ScreenConfirmation(),
        "/reset": (context) => const ScreenReset()
      },
    );
  }
}
