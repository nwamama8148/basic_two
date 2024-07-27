import 'package:basic_two/completed_order_page.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
                    Divider(height: 10,),
                    SizedBox(
                      height: 540,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompletedOrderPage(),
                        ),
                      );
                    },
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
