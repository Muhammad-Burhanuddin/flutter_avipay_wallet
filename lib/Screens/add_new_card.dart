import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_avipay_wallet/Screens/transfer_by_bank.dart';
import 'package:get/get.dart';

class AddNewCardWidget extends StatefulWidget {
  const AddNewCardWidget({super.key});

  @override
  State<AddNewCardWidget> createState() => _AddNewCardWidgetState();
}

class _AddNewCardWidgetState extends State<AddNewCardWidget> {
  String cardNumber = '';
  String expiryDate = '01/25';
  String cardHolderName = 'Malevin Geurror';
  String cvvCode = '567';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffFABE3C),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.off(const TransferByBankWidget());
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
            "Add New Card",
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
                'Bank Account',
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
                  suffixIcon: Icon(
                    Icons.check_circle_outline_rounded,
                    color: Color(0xff3DAB25),
                  ),
                  hintText: '123 456 786 000',
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
                'Expired',
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
                  hintText: '26/12',
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
                'Result',
                style: TextStyle(
                    color: Color(0xff232440),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              CreditCardWidget(
                textStyle: const TextStyle(
                  color: Color(0xff232440),
                ),
                glassmorphismConfig:
                    useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                bankName: 'AVI BANK',
                frontCardBorder: !useGlassMorphism
                    ? Border.all(
                        color: const Color(0xffFABE3C),
                      )
                    : null,
                backCardBorder: !useGlassMorphism
                    ? Border.all(
                        color: const Color(0xffFABE3C),
                      )
                    : null,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                cardBgColor: const Color(0xffFABE3C),
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const TransferByBankWidget());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xff665AF0),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Add New Card',
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
