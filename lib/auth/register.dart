import 'package:flutter/material.dart';
import 'package:plants_auth_design/auth/login.dart';
import 'package:plants_auth_design/auth/register.dart';
import 'package:plants_auth_design/pages/home.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isChecked = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Top image with wave

                  // Login Form
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 80),
                        Center(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3F724C),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: const Text(
                            "Create your account here",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Full Name
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFC6E1CE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                // when not focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                // when focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFF3F724C),
                                  width: 2,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black54,
                              ),
                              hintText: 'Full Name',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Full Name
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFC6E1CE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                // when not focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                // when focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFF3F724C),
                                  width: 2,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.black54,
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Email
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFC6E1CE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                // when not focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                // when focused
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFF3F724C),
                                  width: 2,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                                right: 10,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black54,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.remove_red_eye
                                      : Icons.hide_source,
                                  color: Colors.black45,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3F724C),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                "Or Continue with",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(16),
                                backgroundColor: Colors.white,
                                elevation: 2,
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 32,
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(16),
                                backgroundColor: Colors.white,
                                elevation: 2,
                              ),
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/google.png',
                                width: 32,
                                height: 32,
                                fit: BoxFit.contain,
                              ),
                            ),

                            SizedBox(width: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(16),
                                backgroundColor: Colors.white,
                                elevation: 2,
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.apple,
                                color: Colors.black,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(color: Color(0xFF3F724C)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              elevation: 2.0,
              fillColor: Color(0xFFD7E3D9),
              shape: CircleBorder(),
              constraints: BoxConstraints.tightFor(width: 40, height: 40),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF3F724C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom wave clipper
