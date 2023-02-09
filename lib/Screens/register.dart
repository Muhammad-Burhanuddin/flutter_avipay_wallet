import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup_successfully.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  Get.off(const LoginScreen());
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
            "Register",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff6E6E82)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Username',
                  style: TextStyle(
                      color: Color(0xff6E6E82),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.check_box_rounded,
                      color: Color(0xff3DAB25),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 245, 244, 244),
                    hintText: "Melvin Guerro",
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6E6E82)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _isFocused = true;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 245, 244, 244),
                    hintText: "Phone",
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6E6E82)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _isFocused = true;
                    });
                  },
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
                  controller: passwordController,
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
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _isFocused = true;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                      color: Color(0xff6E6E82),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
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
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:
                            _isFocused ? const Color(0xff665AF0) : Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _isFocused = true;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
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
                    Container(
                      width: 300,
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text:
                                'Be create your account you have to agree with our ',
                            style: TextStyle(
                              color: Color(0xff232440),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                          text: 'Teams and conditions',
                          style: TextStyle(
                            fontSize: 16,
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
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Get.off(const SignUpSccessWidget());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff665AF0),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        'Register',
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
                        text: 'Already have account? ',
                        style: TextStyle(
                            color: Color(0xff232440),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                      text: 'Log in',
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
              ]),
        ),
      ),
    );
  }
}
