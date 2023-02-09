import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avipay_wallet/Screens/register.dart';
import 'package:action_slider/action_slider.dart';
import 'package:get/get.dart';
import 'add_new_card.dart';

class TransferByBankWidget extends StatefulWidget {
  const TransferByBankWidget({super.key});

  @override
  State<TransferByBankWidget> createState() => _TransferByBankWidgetState();
}

class _TransferByBankWidgetState extends State<TransferByBankWidget> {
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
              "Transfer By Bank",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff232440),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: (() {
                  Get.off(const AddNewCardWidget());
                }),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffFEBC11),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                              child: Icon(
                            Icons.wallet_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                        ),
                        title: const Text(
                          'AVI BANK',
                          style: TextStyle(
                              color: Color(0xff232440),
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text(
                          '123 456 700 763',
                          style: TextStyle(
                              color: Color(0xff6E6E82),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.navigate_next,
                        color: Color(0xff6E6E82),
                        size: 30,
                      ),
                      onPressed: () {
                        Get.off(const AddNewCardWidget());
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'To The Account',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              DropDownTextField(
                
                keyboardType: TextInputType.number,
                listTextStyle: const TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textStyle: const TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                clearOption: true,
                enableSearch: true,
                dropDownIconProperty: IconProperty(
                    icon: Icons.arrow_drop_down_outlined,
                    color: const Color(0xff6E6E82),
                    size: 30),
                clearIconProperty: IconProperty(
                  icon: Icons.clear,
                  color: const Color(0xff6E6E82),
                ),
                searchDecoration:
                    const InputDecoration(hintText: "123 456 700 763"),
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownItemCount: 6,
                dropDownList: const [
                  DropDownValueModel(name: 'name5', value: "value5"),
                  DropDownValueModel(name: 'name6', value: "value6"),
                  DropDownValueModel(name: 'name7', value: "value7"),
                  DropDownValueModel(name: 'name8', value: "value8"),
                ],
                onChanged: (val) {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Bank',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              DropDownTextField(
                
                keyboardType: TextInputType.text,
                listTextStyle: const TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textStyle: const TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                clearOption: true,
                enableSearch: true,
                dropDownIconProperty: IconProperty(
                    icon: Icons.arrow_drop_down_outlined,
                    color: const Color(0xff6E6E82),
                    size: 30),
                clearIconProperty: IconProperty(
                  icon: Icons.clear,
                  color: const Color(0xff6E6E82),
                ),
                searchDecoration: const InputDecoration(hintText: "AVI Bank"),
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownItemCount: 4,
                dropDownList: const [
                  DropDownValueModel(name: 'AVI Bank', value: "AVI Bank"),
                  DropDownValueModel(name: 'name6', value: "value6"),
                  DropDownValueModel(name: 'name7', value: "value7"),
                  DropDownValueModel(name: 'name8', value: "value8"),
                ],
                onChanged: (val) {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Cash (Balance \$12,0000 )',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const TextField(
                style: TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '\$12,000,00',
                  hintStyle: TextStyle(
                      color: Color(0xff6E6E82),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Transfer Content',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const TextField(
                style: TextStyle(
                    color: Color(0xff6E6E82),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Loan Payment',
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
                      'SWIPE TO TRANSFER',
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
                    Get.to(const Register());
                  },
                ),
              ),
            ]),
          ),
        ));
  }
}
