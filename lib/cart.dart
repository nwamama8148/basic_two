// import 'package:basic_two/completed_order_page.dart';
import 'package:basic_two/components/colors.dart';
import 'package:basic_two/delivery_address.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _cardNumberController = TextEditingController();

  final TextEditingController _expiryDateController = TextEditingController();

  final TextEditingController _cvvController = TextEditingController();

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Card Details'),
          content: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: 'Cardholder Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the cardholder name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _cardNumberController,
                    decoration: const InputDecoration(hintText: 'Card Number'),
                    keyboardType: TextInputType.number,
                    maxLength: 16,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the card number';
                      }
                      if (value.length != 16) {
                        return 'Card number must be 16 digits';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _expiryDateController,
                    decoration:
                        InputDecoration(hintText: 'Expiry Date (MM/YY)'),
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the expiry date';
                      }
                      if (!RegExp(r'^(0[1-9]|1[0-2])\/?([0-9]{2})$')
                          .hasMatch(value)) {
                        return 'Expiry date must be in MM/YY format';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _cvvController,
                    decoration: InputDecoration(hintText: 'CVV'),
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the CVV';
                      }
                      if (value.length != 3) {
                        return 'CVV must be 3 digits';
                      }
                      return null;
                    },
                  ),
                
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                 if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DeliveryAddress(),),);
                  // Process the form data
                  print('Cardholder Name: ${_nameController.text}');
                  print('Card Number: ${_cardNumberController.text}');
                  print('Expiry Date: ${_expiryDateController.text}');
                  print('CVV: ${_cvvController.text}');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  // pop up ENDS HERE
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      color: halfBackgroundColor,
                      height: 140,
                      child: Stack(
                        children: [
                          const Center(
                            child: Text(
                              'My Basket',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            height: 35,
                            left: 10,
                            top: 55,
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon:
                                    const Icon(Icons.arrow_back_ios_new_sharp),
                                label: const Text('Back')),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: 540,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 6.0,
                          vertical: 19.0,
                        ),
                        itemCount: 23,
                        itemBuilder: (context, index) {
                          return Row(children: [
                            Expanded(
                              flex: 7,
                              child: ListTile(
                                isThreeLine: true,
                                leading: CircleAvatar(
                                  child: Image.asset(
                                    'assets/images/food_one.png',
                                  ),
                                ),
                                title: const Text('Quinoa fruit salad'),
                                subtitle: const Text('N 2000'),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, bottom: 45),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/remove.png',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: textColorHead,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset(
                                      'assets/images/plus_up.png',
                                      width: 22,
                                      height: 22,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'N 60,000',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: halfBackgroundColor,
                      // fixedSize: const Size(370, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () => _showPopup(context),
                    child: const Text(
                      'Checkout',
                      style: TextStyle(color: txtColorOne),
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
