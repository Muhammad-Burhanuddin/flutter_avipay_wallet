import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chnage_password.dart';
import 'edit_profile.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  String _selectedLanguage = 'English';

  final List<String> _languageList = [
    'English',
    'French',
    'German',
    'Spanish',
    'Italian',
  ];
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
                  //   Get.off(LoginScreen());
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
            "Settting",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff232440),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: (() {
              Get.off(const EditProfileWidget());
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Change Face ID',
                  style: TextStyle(
                      color: Color(0xff232440),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xff6E6E82),
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Change Lanuage',
            style: TextStyle(
                color: Color(0xff232440),
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _selectedLanguage,
                style: const TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                ),
              ),
              DropdownButton<String>(
                elevation: 0,
                icon: const Icon(
                  Icons.expand_more,
                  size: 30,
                ),
                value: _selectedLanguage,
                items: _languageList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (() {
              Get.off(const ChangePasswordWidget());
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Change Password',
                  style: TextStyle(
                      color: Color(0xff232440),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xff6E6E82),
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (() {
              // Get.off(AddNewCardWidget());
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Other',
                      style: TextStyle(
                          color: Color(0xff232440),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Application Information',
                      style: TextStyle(
                          color: Color(0xff6E6E82),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0xff6E6E82),
                  size: 30,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
