import 'package:flutter/material.dart';

class ShareBillWidget extends StatefulWidget {
  const ShareBillWidget({super.key});

  @override
  State<ShareBillWidget> createState() => _ShareBillWidgetState();
}

class _ShareBillWidgetState extends State<ShareBillWidget> {
  final TextEditingController _searchController = TextEditingController();
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
            "Share Analys",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff232440),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 248, 248, 248),
                        filled: true,
                        hintStyle: const TextStyle(
                          color: Color(0xff6E6E82),
                        ),
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xff6E6E82),
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xff6E6E82),
                            width: 3,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 0),
                TextButton(
                  onPressed: () {},
                  child: Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff665AF0),
                      ),
                      child: const Center(
                          child: Text(
                        "Send",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
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
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          color: Color(0xffEB5A5A),
                          fontSize: 14,
                        ),
                      ),
                    ));
              },
            ),
          ],
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
