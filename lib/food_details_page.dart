import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 300,
              color: halfBackgroundColor,
              child: Image.asset(
                // fit: BoxFit.fitHeight,
                'assets/images/welcome_screen.png',
                height: 20,
                width: 11,
              ),
            ),
            Positioned(
              top: 24,
              left: 24,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    label: const Text('Back')))
          ]),
        ],
      ),
    ));
  }
}
