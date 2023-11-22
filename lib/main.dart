import 'package:flutter/material.dart';
import 'package:personal_app/screens/github_screen.dart';
import 'package:personal_app/screens/home_screen.dart';
import 'package:personal_app/screens/linkedin_screen.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        GithubWebView.id: (context) => GithubWebView(),
        LinkedInWebView.id: (context) => LinkedInWebView(),
      },
    );
  }
}
