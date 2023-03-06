import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectdemo/Infrom.dart';
import 'Detail.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Name());
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InformationWidget(),
    );
  }
}
