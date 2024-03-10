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
    var theme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: SvgPicture.asset(
              "assets/img/icons/LOGO.svg",
              width: 130,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "LOGIN",
                          style: theme.titleLarge!.apply(color: Colors.white),
                        ),
                        Text(
                          "SIGN UP",
                          style: theme.titleLarge!.apply(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back",
                              style: theme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sign in with your account",
                              style: theme.titleSmall,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            const TextField(
                              decoration:
                                  InputDecoration(label: Text("UserName")),
                            ),
                            const TextField(
                              obscureText: true,
                              enableSuggestions: true,
                              autocorrect: false,
                              decoration:
                                  InputDecoration(label: Text("Password")),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
