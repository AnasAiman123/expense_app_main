import 'dart:async';

import 'package:expense_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'category_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static const name = '/splash_screen'; //

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLogin = true;

  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 3000),
      () => isLogin
          ? Navigator.pushReplacementNamed(context, CategoryScreen.name)
          : Navigator.pushReplacementNamed(context, LoginScreen.name),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              'Expenses App',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
