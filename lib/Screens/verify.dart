import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_successfully.dart';

class VerifyWiget extends StatefulWidget {
  const VerifyWiget({super.key});

  @override
  State<VerifyWiget> createState() => _VerifyWigetState();
}

class _VerifyWigetState extends State<VerifyWiget> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.off(const SignUpSccessWidget());
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
            "Verify",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff6E6E82)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/getst.jpg'),
                const SizedBox(height: 25),
                const Text(
                  'Verify Phone',
                  style: TextStyle(
                      color: Color(0xff232440),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: 220,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Please enter the 4 digit code sent to ',
                            style: TextStyle(
                              color: Color(0xff6E6E82),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                          text: '0300-0000000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xff665AF0,
                            ),
                          ),
                        )
                      ])),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            color: Color(0xff232440),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 244, 244),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
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
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            color: Color(0xff232440),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 244, 244),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
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
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            color: Color(0xff232440),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 244, 244),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
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
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
                            color: Color(0xff232440),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 244, 244),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: _isFocused
                                  ? const Color(0xff665AF0)
                                  : Colors.grey,
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
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resent Code',
                    style: TextStyle(
                        color: Color(0xff665AF0),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 100),
                TextButton(
                  onPressed: () {
                    //  Get.to(LoginScreen());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff665AF0),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
