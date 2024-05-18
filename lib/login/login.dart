import 'package:flutter/material.dart';
import 'package:zomato_restaurent/homepage/homepage.dart';
import 'package:zomato_restaurent/theme/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              const Center(
                child: Text(
                  'ZOMATO',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Text('Restaurent Partner'),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Enter your phone number and we will send\n an OTP To continue',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                //controller: _mobileNumberController,
                style: const TextStyle(fontSize: 18),
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                autofocus: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 18),
                    prefixText: "+91\t",
                    prefixStyle:
                        const TextStyle(color: kBlackColor, fontSize: 18),
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[300]!)),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[300]!)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[300]!))),
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () => goToHomepage(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.all(14),
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: Text(
                      'S E N D  O T P',
                      style: TextStyle(fontSize: 18, color: kWhiteColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(
                      'OR',
                      style: TextStyle(color: kGrey, fontSize: 18),
                    ),
                    Expanded(child: Divider())
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kBlackColor)),
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/google.png',
                      width: 32,
                      height: 32,
                    ),
                    const Text(
                      'Login with Google',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToHomepage(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
  }
}
