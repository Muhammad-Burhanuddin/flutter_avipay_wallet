import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'friends.dart';

class AddNewFriendWidget extends StatefulWidget {
  const AddNewFriendWidget({super.key});

  @override
  State<AddNewFriendWidget> createState() => _AddNewFriendWidgetState();
}

class _AddNewFriendWidgetState extends State<AddNewFriendWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.delete_outline_rounded)),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.off(const FriendsWidget());
                },
              );
            },
          ),
          iconTheme: const IconThemeData(color: Color(0xff665AF0)),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Add New Friend",
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
                'Name',
                style: TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Melvin Guerror",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6E6E82),
                  ),
                ),
                onTap: () {
                  setState(() {
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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "123 456 875 000",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6E6E82),
                  ),
                ),
                onTap: () {
                  setState(() {
                  });
                },
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
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "UserAipay@gmail.com",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6E6E82),
                  ),
                ),
                onTap: () {
                  setState(() {
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Get.off(const FriendsWidget());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff665AF0),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Add New Contact',
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
