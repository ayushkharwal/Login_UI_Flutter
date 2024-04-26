import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SvgPicture.asset('assets/icons/star_icon.svg'),
        actions: [
          SvgPicture.asset(
            'assets/icons/right_arrow_icon.svg',
            height: 8,
            color: Colors.grey,
          ),
          SizedBox(
            width: size.width / 1.8,
            child: const Divider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Check your email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/sparkles_icon.svg',
                      height: 40,
                    ),
                  ],
                ),
                const Text(
                  'We sent a verification link to example@email.com',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Pinput(
              length: 4,
              keyboardType: TextInputType.number,
              defaultPinTheme: PinTheme(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                margin: const EdgeInsets.only(right: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // LOGIN BUTTON
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.pink,
                      Colors.purple,
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Verify Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Didn\'t receive the email?',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 6),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Click to resend',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Back to log in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
