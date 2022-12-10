import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameon_assignment/list_screen.dart';
import 'package:gameon_assignment/main.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            child: LoginDecoration(),
          ),
          Positioned(
            top: 260,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(children: [
                      const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter OTP',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    pinField(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'OTP Send to 9900265566',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.timer_rounded,
                          color: Color(0xff088F81),
                        ),
                        MinuteTimer()
                      ],
                    ),
                    ],),
                    const SizedBox(height: 30,),
                    ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ListScreen(),));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor),
                              elevation: MaterialStateProperty.all<double>(10),
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                            child: Text('Login'),
                          )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row pinField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
            style: const TextStyle(fontSize: 24),
            showCursor: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2))),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
            style: const TextStyle(fontSize: 24),
            showCursor: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2))),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
            style: const TextStyle(fontSize: 24),
            showCursor: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2))),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
            style: const TextStyle(fontSize: 24),
            showCursor: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xff088f81), width: 2))),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    );
  }
}

class MinuteTimer extends StatefulWidget {
  const MinuteTimer({Key? key}) : super(key: key);

  @override
  MinuteTimerState createState() => MinuteTimerState();
}

class MinuteTimerState extends State<MinuteTimer> {
  late int time;
  late Timer everySecond;

  @override
  void initState() {
    super.initState();

    time = 60;

    everySecond = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time == 1) {
        everySecond.cancel();
      }
      time = time - 1;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();

    everySecond.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('00:${time.toString().padLeft(2,'0')}',style: const TextStyle(color: Color(0xff088F81)),),
    );
  }
}
