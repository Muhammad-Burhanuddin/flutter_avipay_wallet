import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'register.dart';
import 'verify.dart';

class SignUpSccessWidget extends StatefulWidget {
  const SignUpSccessWidget({super.key});

  @override
  State<SignUpSccessWidget> createState() => _SignUpSccessWidgetState();
}

class _SignUpSccessWidgetState extends State<SignUpSccessWidget> {
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
                Get.off(const Register());
              },
            );
          },
        ),
        iconTheme: const IconThemeData(
          color: Color(0xff665AF0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/getst.jpg'),
              const SizedBox(height: 25),
              const Text(
                'Sign up Successfully',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: 300,
                child: Text(
                  'Everything will be fine!',
                  style: TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  Get.to(const VerifyWiget());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff3DAB25),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
