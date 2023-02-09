import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register.dart';
import 'splashscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isFocused = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.off(const Splashscreen());
                },
              );
            },
          ),
          iconTheme: const IconThemeData(
            color: Color(0xff665AF0),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Login",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff6E6E82)),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Phone',
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.check_box_rounded,
                  color: Color(0xff3DAB25),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 245, 244, 244),
                hintText: "0000-0000000",
                hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6E6E82)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: _isFocused ? const Color(0xff665AF0) : Colors.grey,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: _isFocused ? const Color(0xff665AF0) : Colors.grey,
                    width: 3,
                  ),
                ),
              ),
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'Please enter phone';
              //   }
              //   return null;
              // },
              onTap: () {
                setState(() {
                  _isFocused = true;
                });
              },
              // onEditingComplete: () {
              //   setState(() {
              //     _isFocused = false;
              //   });
              // },
              // onChanged: (text) {
              //   setState(() {
              //     _isFocused = text.isNotEmpty;
              //   });
              // },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Password',
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.remove_red_eye_rounded,
                  color: Color(0xff6E6E82),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 245, 244, 244),
                hintText: "At least 8 Character",
                hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6E6E82)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: _isFocused ? const Color(0xff665AF0) : Colors.grey,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: _isFocused ? const Color(0xff665AF0) : Colors.grey,
                    width: 3,
                  ),
                ),
              ),
              // obscureText: true,
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'Please enter a password';
              //   }
              //   return null;
              // },
              onTap: () {
                setState(() {
                  _isFocused = true;
                });
              },
              // onEditingComplete: () {
              //   setState(() {
              //     _isFocused = false;
              //   });
              // },
              // onChanged: (text) {
              //   setState(() {
              //     _isFocused = text.isNotEmpty;
              //   });
              // },
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: const Color(0xff665AF0),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text(
                  'Remember Me',
                  style: TextStyle(
                      color: Color(0xff665AF0),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 80,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const Register());
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Color(0xff665AF0),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Get.to(const Register());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff665AF0),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Dont have account? ',
                    style: TextStyle(
                        color: Color(0xff232440),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xff665AF0,
                    ),
                  ),
                )
              ])),
            )
          ],
        ),
      ),
    );
  }
}
