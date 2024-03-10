import 'package:blog_club/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
            child: SvgPicture.asset("assets/img/icons/LOGO.svg"),
          ),
          Container(
            decoration: BoxDecoration(
              color: primaryColor,

            ),
          ),
        ],
      ),
    ));
  }
}
