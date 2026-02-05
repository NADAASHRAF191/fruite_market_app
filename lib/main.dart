import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/splash_view.dart';
void main() {
  runApp(const FruiteApp());
}

class FruiteApp extends StatelessWidget {
  const FruiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashView(),
    );
  }
}
