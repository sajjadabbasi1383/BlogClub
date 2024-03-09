import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFBFCFF),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Image.asset("assets/img/background/onboarding.png"),
            ),
          ),
          Container(
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.black.withOpacity(0.2)),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  height: 60,
                  child: Row(

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
