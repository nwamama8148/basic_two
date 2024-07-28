import 'package:basic_two/bank_card.dart';
import 'package:basic_two/completed_order_page.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

class DeliveryAddress extends StatelessWidget {
  DeliveryAddress({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text(
            'Delivery Address',
            style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Arial',
            ),
          ),
          centerTitle: true,
          backgroundColor: halfBackgroundColor,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.19,
              left: 20,
              right: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    // controller: _nameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16),
                      fillColor: backgroundGrey,
                      labelText: 'Enter your full address here',
                      // hintText: 'Full Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        // borderSide: BorderSide.,
                      ),
                      labelStyle: const TextStyle(
                        color: textColorHead,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    // controller: _nameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16),
                      fillColor: backgroundGrey,
                      label: const Text('Your Number'),
                      // hintText: 'Full Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        // borderSide: BorderSide.,
                      ),
                      labelStyle: const TextStyle(
                        color: textColorHead,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter number to contact you';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(143, 56),
                          backgroundColor: payOnDelivery,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CompletedOrderPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'pay on deliveery',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Sans'),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(143, 56),
                          backgroundColor: payOnDelivery,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BankCard(),
                            ),
                          );
                        },
                        child: const Text(
                          'pay with card',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Sans'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
