import 'package:flutter/material.dart';
import 'package:flutter_avipay_wallet/Screens/settings.dart';
import 'package:get/get.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
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
                  Get.off(const SettingsWidget());
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
            "Change Password",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff232440),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Old Password',
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
                  hintStyle:
                      const TextStyle(fontSize: 18, color: Color(0xff6E6E82)),
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
                'New Password',
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
                  hintStyle:
                      const TextStyle(fontSize: 18, color: Color(0xff6E6E82)),
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
                  hintStyle:
                      const TextStyle(fontSize: 18, color: Color(0xff6E6E82)),
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
                  const Text('Sign out for all devices ',
                      style: TextStyle(
                        color: Color(0xff232440),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const SettingsWidget());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff665AF0),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Save Change',
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
