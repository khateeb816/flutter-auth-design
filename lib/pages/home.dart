import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:plants_auth_design/auth/login.dart';
import 'package:plants_auth_design/auth/register.dart'; // Required for ImageFilter

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0), // Set your desired height here
        child: AppBar(),
      ),

      body: Stack(
        children: [
          // Background image
          SizedBox.expand(
          child:  Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/leaf-2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),),

          // Blur filter
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1.6,
              sigmaY: 1.6,
            ), // adjust blur here
            child: Container(
              color: Colors.black.withOpacity(0), // Required to make blur work
            ),
          ),

          // Optional overlay for darkening
          Container(color: Colors.black.withOpacity(0.3)),
          // Text on top
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, right: 40, top: 100),
                child: Text(
                  "The best app for your plants",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 54,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 150),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(
                      0.3,
                    ), // 30% opaque white
                    foregroundColor: Colors.white, // text color
                    elevation: 0, // optional: remove shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Sign In"),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
