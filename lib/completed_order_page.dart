import 'package:basic_two/components/colors.dart';
import 'package:basic_two/home_screen.dart';
import 'package:flutter/material.dart';

class CompletedOrderPage extends StatelessWidget {
  const CompletedOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/checkbox_full.png',
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                'Order Taken',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 9,),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  '''Your order have been taken and is being 
                          attended to !!!''',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Sans',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: halfBackgroundColor,
                  fixedSize: const Size(150, 36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text('Track order'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: halfBackgroundColor,
                  // fixedSize: const Size(370, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Continue Shopping',
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
