import 'package:chs_p/features/app/splash_screen/splash_screen.dart';
import 'package:chs_p/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Recipe App',
      home: SplashScreen(
        child: LoginPage(),
      )
    );
  }
}
