import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:circular_gradient_spinner/circular_gradient_spinner.dart';
import 'package:starter_app/app/colors.dart';
import 'package:starter_app/app/constants.dart';
import 'package:starter_app/presentation/pages/landing_page.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    // ignore: prefer_const_constructors
    return Scaffold(
      body: FlutterSplashScreen(
        duration: const Duration(seconds: 10),
        nextScreen: const LandingPage(),
        splashScreenBody: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                splashTopGradient,
                splashBottomGradient,
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: oneH(context) * 40,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(logosPath),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: oneH(context) * 10),
                child: CircularGradientSpinner(
                  spinnerDirection: SpinnerDirection.antiClockwise,
                  gradientSteps: 2,
                  color: Colors.blue,
                  size: oneH(context) * 8,
                  strokeWidth: oneH(context) * 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
