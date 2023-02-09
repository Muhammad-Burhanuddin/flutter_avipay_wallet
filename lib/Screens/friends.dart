import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_new_friend.dart';

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({super.key});

  @override
  State<FriendsWidget> createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  List<Notification> notifications = [
    Notification(
      image:
          'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
      title: 'John Smith',
      number: '123 456 789 000',
    ),
    Notification(
      image:
          'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
      title: 'Smith',
      number: '234 542 678 232',
    ),
    Notification(
      image:
          'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
      title: 'John',
      number: '452 234 987 092',
    ),
    Notification(
      image:
          'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
      title: 'Melvin Guerror',
      number: '452 234 987 092',
    )
  ];
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
                  //   Get.off(LoginScreen());
                },
              );
            },
          ),
          iconTheme: const IconThemeData(color: Color(0xff665AF0)),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Friends",
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
              Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Get.to(const AddNewFriendWidget());
                    }),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: const Color(0xff665AF0), width: 2)),
                      child: const Center(
                          child: Icon(Icons.add, color: Color(0xff665AF0))),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Add New Friend',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff232440),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(0xff665AF0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Text(
                      'A',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const Text(
                    'Choose',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff665AF0),
                    ),
                  )
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => const Divider(
                  thickness: 0.5,
                  color: Color(0xff6E6E82),
                  endIndent: 20,
                  indent: 20,
                ),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  Notification notification = notifications[index];
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xff665AF0), width: 2),
                        image: DecorationImage(
                          image: NetworkImage(notification.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      notification.title,
                      style: const TextStyle(
                        color: Color(0xff232440),
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      '+${notification.number}',
                      style: const TextStyle(
                        color: Color(0xff6E6E82),
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Notification {
  final String image;
  final String title;
  final String number;

  Notification({
    required this.image,
    required this.title,
    required this.number,
  });
}
