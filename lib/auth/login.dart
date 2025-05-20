import 'package:flutter/material.dart';
import 'package:plants_auth_design/auth/register.dart';
import 'package:plants_auth_design/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  Stack(
                    children: [
                      ClipPath(
                        clipper: BottomWaveClipper(),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/login_image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Login Form
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: const Text(
                            "Welcome Back",
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
                            "Login to your account",
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

                        // Password
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isChecked = value!;
                                    });
                                  },
                                  shape: const CircleBorder(),
                                ),
                                Text(
                                  "Remember me",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3F724C),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3F724C),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
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
                MaterialPageRoute(builder: (context) =>  MyHomePage())
                );
              },
              elevation: 2.0,
              fillColor: Colors.white,
              shape: CircleBorder(),
              constraints: BoxConstraints.tightFor(
                width: 40,
                height: 40,
              ),
              child: Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xFF3F724C)),
            ),
          )

        ],
      ),
    );
  }
}

// Custom wave clipper
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.cubicTo(
      size.width * 0.25,
      size.height - 80,
      size.width * 0.75,
      size.height,
      size.width,
      size.height - 40,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
