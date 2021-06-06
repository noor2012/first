import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/homepage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        accentColor: Colors.black,
        cardColor: Colors.white70
      ),
      home: HomePage(),
    );
  }
}

