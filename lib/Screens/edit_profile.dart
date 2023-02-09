import 'package:flutter/material.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Edit Profile",
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
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/getst.jpg',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Bank Account',
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const TextField(
              style: TextStyle(
                  color: Color(0xff232440),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Malvien Guerror',
                hintStyle: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Phone number',
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const TextField(
              style: TextStyle(
                  color: Color(0xff232440),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '123 456 786 000',
                hintStyle: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Email',
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const TextField(
              style: TextStyle(
                  color: Color(0xff232440),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Unlinked',
                hintStyle: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                // Get.to(TransferByBankWidget());
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
      )),
    );
  }
}
