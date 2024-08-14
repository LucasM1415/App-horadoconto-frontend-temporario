import 'package:flutter/material.dart';
import 'package:biblioteca/screens/home/home_screen.dart';
import 'package:biblioteca/routes.dart';
import 'package:biblioteca/theme.dart';
import 'package:biblioteca/app_initializer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeApp(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca',
      theme: AppTheme.lightTheme(context),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
