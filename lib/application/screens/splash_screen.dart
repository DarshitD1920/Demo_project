import 'package:flutter/material.dart';

import '../../presentation/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: ElevatedButton(onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRouter.home, (route) => true);
          }, child: Text('Let\'s Start')),
        )
      ]),
    );
  }
}
