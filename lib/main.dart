import 'package:delivery_user/ui/splash/splash_screen.dart';
import 'package:delivery_user/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
void main() {runApp(
  EasyLocalization(
      supportedLocales: [Locale('ar', 'EG'), Locale('en', 'US')],
      path: 'assets/translations', // <-- change patch to your
      fallbackLocale: Locale('ar', 'EG'),
      child: App(),
  )
);}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: "Delivery App",
      theme: ThemeData.dark().copyWith(
        primaryColor: kLightBlue,
      ),
      home: SplashScreen(),
    );
  }
}

