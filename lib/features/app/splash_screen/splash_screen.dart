import 'package:flutter/material.dart';

import '../../user_auth/presentation/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Future.delayed(Duration(seconds: 3),()
    {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => widget.child!), (
          route) => false);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text ( "Welcome to Recipe App",
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
