import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/getst.jpg'),
                  const SizedBox(height: 25),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xffFEBC11),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                        child: Icon(
                      Icons.wallet_outlined,
                      size: 40,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Avipay',
                    style: TextStyle(
                        color: Color(0xff232440),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'Consumer Loan Payment,Pay bills and many other services',
                      style: TextStyle(
                          color: Color(0xff6E6E82),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff665AF0),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
