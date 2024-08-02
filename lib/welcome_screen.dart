import 'package:basic_two/0auths/authentication.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    // double screenWidth = screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.56,
              color: halfBackgroundColor,
              child: Image.asset(
                'assets/images/welcome_screen.png',
                height: 260,
                width: 301,
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: 'Arial',
                      color: textColorHead,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    '''We deliver the best and freshest fruit salad in town; Order for a combo today !!!''',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Times New Roman',
                      color: textColorBody,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Authentication(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: halfBackgroundColor,
                      fixedSize: const Size(370, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Let`s Continue",
                      style: TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
