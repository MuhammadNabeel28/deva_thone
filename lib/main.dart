import 'package:deva_thone/firebase_options.dart';
import 'package:deva_thone/screen/home.dart';

import 'package:deva_thone/screen/login.dart';
import 'package:deva_thone/screen/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const Login(),
      'register': (context) => const Register(),
      'home': (context) => const HomeScreen(),
    },
  ));
}
