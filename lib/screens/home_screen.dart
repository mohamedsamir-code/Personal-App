import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/components.dart';
import 'github_screen.dart';
import 'linkedin_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 112,
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('images/mohamed.png'),
            ),
          ),
          Text(
            'Mohamed Samir',
            style: GoogleFonts.pacifico(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          const Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              color: Color(0xff6c8090),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Color(0xff6c8090),
            thickness: 1,
            indent: 60,
            endIndent: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              height: 65,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.phone, color: Color(0xff2b475e)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      '(+20) 1067770917',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              height: 65,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.mail, color: Color(0xff2b475e)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      'mohamedpotter1998@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            buttonText: 'Github',
            onTap: () {
              Navigator.pushNamed(context, GithubWebView.id);
            },
          ),
          CustomButton(
            buttonText: 'LinkedIn',
            onTap: () {
              Navigator.pushNamed(context, LinkedInWebView.id);
            },
          ),
        ],
      ),
    );
  }
}
