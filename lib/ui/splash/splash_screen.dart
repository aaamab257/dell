import 'package:delivery_user/ui/login/login_screen.dart';
import 'package:delivery_user/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //lunchLogin();
  }

  void lunchLogin() {
    Duration threeSeconds = Duration(seconds: 3);
    Future.delayed(threeSeconds, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('images/iconnileapp.png'),
              width: 100.0,
              height: 100.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            SpinKitThreeBounce(
              color: Colors.white,
              size: 50.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  disabledTextColor: Colors.white,
                  color: Colors.white,
                  child: Text(
                    "Change Language",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
