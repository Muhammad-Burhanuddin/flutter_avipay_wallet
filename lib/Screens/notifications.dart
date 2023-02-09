import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  List<Notification> notifications = [
    Notification(
        image:
            'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
        title: 'John Smith',
        payment: '\$50.00',
        status: 'Successful',
        time: '11:00 PM'),
    Notification(
        image:
            'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
        title: 'Smith',
        payment: '\$20.00',
        status: 'Failed',
        time: '10:45 AM'),
    Notification(
        image:
            'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg',
        title: 'John',
        payment: '\$100.00',
        status: 'Pending',
        time: '1:45 PM'),
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
              "Notification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff232440),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Color(0xff6E6E82),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
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
                        border: Border.all(color: Color(0xff665AF0), width: 2),
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
                      '+${notification.payment}',
                      style: const TextStyle(
                        color: Color(0xffEB5A5A),
                        fontSize: 14,
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          notification.status,
                          style: TextStyle(
                            color: _getColor(notification.status),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${notification.time}',
                          style: const TextStyle(
                            color: Color(0xff6E6E82),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }

  Color _getColor(String status) {
    switch (status) {
      case 'Successful':
        return Colors.green;
      case 'Failed':
        return Colors.red;
      case 'Pending':
        return Colors.yellow;
      default:
        return Colors.black;
    }
  }
}

class Notification {
  final String image;
  final String title;
  final String payment;
  final String status;
  final String time;

  Notification(
      {required this.image,
      required this.title,
      required this.payment,
      required this.status,
      required this.time});
}
