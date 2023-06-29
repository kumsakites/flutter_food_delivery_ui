import 'package:flutter/material.dart';

import 'Pages/CartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemPage.dart';
import 'Pages/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Pages/SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food delivey app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        '/': (context) => SplashScreen(),
        'LoginPage': (context) => LoginPage(),
        'HomePage': (context) => HomePage(),
        'cartPage': (context) => CartPage(),
        'ItemPage': (context) => ItemPage(),
      },
    );
  }
}
