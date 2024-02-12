import 'package:flutter/material.dart';
import 'package:login_beginner/const/app.dart';

class ScreenFlash extends StatefulWidget {
  const ScreenFlash({super.key});

  @override
  State<ScreenFlash> createState() => _ScreenFlashState();
}

class _ScreenFlashState extends State<ScreenFlash> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                AppImages.logo,
              ),
              width: 70,
              height: 70,
            ),
            Text(
              "GOOD",
              style: TextStyle(
                  color: AppColor.logo,
                  fontFamily: "Inter",
                  fontSize: 39,
                  fontWeight: FontWeight.w800),
            ),
            Text("Everythings is good here")
          ],
        ),
      )),
    );
  }
  //! creating a delay and navgate to login page

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushNamed("/login");
  }
}
