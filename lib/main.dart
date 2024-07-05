import 'package:chatappfirebase/services/auth/auth_gate.dart';
import 'package:chatappfirebase/services/auth/login_or_register.dart';
import 'package:chatappfirebase/firebase_options.dart';
import 'package:chatappfirebase/themes/light_mode.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: lightMode,
    );
  }
}
