import 'package:chatting/CommonFile/color.dart';
import 'package:chatting/PinNumber/pin_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinNumber extends StatefulWidget {
  const PinNumber({super.key});

  @override
  State<PinNumber> createState() => _PinNumberState();
}

class _PinNumberState extends State<PinNumber> {
  var pinNumberController = Get.put(PinNumberController());
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          title: Text(
            "Chatting",
            style: TextStyle(color: ThemeColor.secondary),
          ),
          centerTitle: true,
          backgroundColor: ThemeColor.primary,
        ),
        body: InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter Pin Number",
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(_fieldOne, true),
                    OtpInput(_fieldTwo, false),
                    OtpInput(_fieldThree, false),
                    OtpInput(_fieldFour, false)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(10),
                          shadowColor: Colors.transparent,
                          side: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {
                          if (_fieldOne.text.isNotEmpty &&
                              _fieldTwo.text.isNotEmpty &&
                              _fieldThree.text.isNotEmpty &&
                              _fieldFour.text.isNotEmpty) {
                            var _pinNumber = _fieldOne.text +
                                _fieldTwo.text +
                                _fieldThree.text +
                                _fieldFour.text;

                            pinNumberController.verifyPinNumber(_pinNumber);
                          } else {
                            // Fluttertoast.showToast(
                            //     msg: "Please enter valid otp",
                            //     backgroundColor: Colors.red);
                          }
                        },
                        child: const Text('Submit')),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ))
          ]),
        ));
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 50,
        child: TextField(
            autofocus: autoFocus,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            controller: controller,
            maxLength: 1,
            cursorColor: Theme.of(context).primaryColor,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                counterText: '',
                hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            }));
  }
}
