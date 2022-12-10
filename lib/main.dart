import 'package:flutter/material.dart';
import 'package:gameon_assignment/detail_screen.dart';
import 'package:gameon_assignment/list_screen.dart';
import 'package:gameon_assignment/otp_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GameOn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
            fontFamily: GoogleFonts.poppins().fontFamily),
        home: const LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                    borderRadius: BorderRadius.circular(27),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Hi !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Lets's Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Enter Your Phone Number',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: 360,
                          child: IntlPhoneField(
                            dropdownIcon: const Icon(null),
                            showCountryFlag: false,
                            disableLengthCheck: true,
                            style: const TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                                filled: true,
                                border: const OutlineInputBorder(),
                                fillColor: Colors.grey[200]),
                          )),
                      const SizedBox(height: 220),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OTPScreen()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.teal),
                              elevation: MaterialStateProperty.all<double>(10),
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.teal),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          child: const Text('Get OTP')),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Have a Pin?',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class LoginDecoration extends StatelessWidget {
  const LoginDecoration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 290,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 290,
          decoration: BoxDecoration(
              color: Colors.teal.withAlpha(180)),
          child: Image.asset('assets/logo.png'),
        ));
  }
}
