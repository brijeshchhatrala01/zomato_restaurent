import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'intro_data/into_data.dart';

//splashscreen page
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    //call splash method
    // splashMethod();
    checkConnectivity();
    super.initState();
  }

  Future<void> showNetworkError() async {
    return showDialog(
      context: context,
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        return AlertDialog(
          title: const Text(
            textAlign: TextAlign.center,
            'Network Not Available!!!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          content: Image.asset(
            'assets/network_error.png',
            width: width * 0.4,
            height: height * 0.4,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => exit(0),
              child: const Text('E X I T'),
            )
          ],
        );
      },
    );
  }

  void goToIntroData() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroData(),
          ));
    });
  }

  Future checkConnectivity() async {
    var connection = await Connectivity().checkConnectivity();

    if (connection == ConnectivityResult.mobile ||
        connection == ConnectivityResult.wifi) {
      goToIntroData();
    } else {
      showNetworkError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset('assets/logo_zomato.png'),
          ),
        ),
      ),
    );
  }
}
