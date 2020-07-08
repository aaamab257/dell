import 'package:delivery_user/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 18.0,
            color: kLightBlue,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
      backgroundColor: kLightBlue,
    );
  }
}
