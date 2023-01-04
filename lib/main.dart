import 'package:angrybaaz/screens/coffeeScree.dart';
import 'package:angrybaaz/screens/homeScreen.dart';
import 'package:angrybaaz/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        HomeScreen.name: (context) => const HomeScreen(),
        CoffeePage.name: (context) => const CoffeePage(),
      },
    );
  }
}
