import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:turistapp/firebase_options.dart';
import 'package:turistapp/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const TuristApp());
}
