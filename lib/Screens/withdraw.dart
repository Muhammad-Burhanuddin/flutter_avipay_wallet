import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'shareanlyze.dart';

class WithdrawWidget extends StatefulWidget {
  const WithdrawWidget({super.key});

  @override
  State<WithdrawWidget> createState() => _WithdrawWidgetState();
}

class _WithdrawWidgetState extends State<WithdrawWidget> {
  int selectedIndex = -1;
  List<String> items = [
    "\$500",
    "\$2000",
    "\$200",
    "\$1000",
    "\$500",
    "\$100",
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
            "Withdraw",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff232440),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (() {
                //   Get.off(ChangePasswordWidget());
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Withdraw With AviPay',
                        style: TextStyle(
                            color: Color(0xff232440),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '123 455 678 000',
                        style: TextStyle(
                            color: Color(0xff6E6E82),
                            fontSize: 16,
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Denomination',
              style: TextStyle(
                  color: Color(0xff232440),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 270,
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: List.generate(items.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 216, 217, 240),
                          border: selectedIndex == index
                              ? Border.all(
                                  color: const Color(0xff665AF0), width: 2)
                              : null),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Center(
                          child: Text(
                            items[index],
                            style: const TextStyle(
                                color: Color(0xff232440),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            const Text(
              'Cash (Surplus: \$12,765,00)',
              style: TextStyle(
                  color: Color(0xff232440),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const TextField(
              style: TextStyle(
                  color: Color(0xff6E6E82),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '\$',
                hintStyle: TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 100),
            Center(
              child: ActionSlider.custom(
                toggleMargin: EdgeInsets.zero,
                width: 350,
                toggleWidth: 60.0,
                backgroundColor: const Color(0xff665AF0),
                foregroundChild: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Color(0xff665AF0),
                      )),
                ),
                foregroundBuilder: (context, state, child) => child!,
                backgroundChild: const Center(
                  child: Text(
                    'SWIPE TO WITHDRAW',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                backgroundBuilder: (context, state, child) => ClipRect(
                    child: OverflowBox(
                        maxWidth: state.standardSize.width,
                        maxHeight: state.toggleSize.height,
                        minWidth: state.standardSize.width,
                        minHeight: state.toggleSize.height,
                        child: child!)),
                backgroundBorderRadius: BorderRadius.circular(15.0),
                action: (controller) async {
                  Get.to(const ShareAnalyzeWidget());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
