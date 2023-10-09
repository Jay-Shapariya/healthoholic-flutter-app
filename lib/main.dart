import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthoholic/const/colors.dart';
import 'package:healthoholic/views/splash_screen/splash_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthoHolic',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: darkFontGrey),
          elevation: 0.0,
        ),
      ),
      home: const SplashLogo(),
    );
  }
}
