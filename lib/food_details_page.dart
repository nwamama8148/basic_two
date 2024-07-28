import 'package:basic_two/cart.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

final List<String> foodDesc = [
  'Red Quinoa',
  'Lime',
  'Honey',
  'BlueBerry',
  'Mango',
  'Straw',
  'FreshMint',
];

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: halfBackgroundColor, // halfBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: halfBackgroundColor, // halfBackgroundColor,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Image.asset(
                          'assets/images/food_three.png',
                          fit: BoxFit.contain,
                          height: 130,
                          width: 130,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 23,
                    left: 20,
                    height: 32,
                    // width: 95,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.zero
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                      label: const Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                width: double.infinity,
                height: screenHeight * 0.7,
                decoration: const BoxDecoration(
                  color: Colors.white, // backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22.0),
                    topRight: Radius.circular(22.0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Quinoa Fruit Salad',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black, // textColorHead,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/remove.png',
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black, // textColorHead,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Image.asset(
                              'assets/images/plus_up.png',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                        const Text(
                          'N 20000 ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black, // textColorHead,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'This combo contains:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: foodDesc.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        mainAxisExtent: 28,
                      ),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: inputBg, // inputBg,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            foodDesc[index],
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'If you are looking for a new fruit salad to eat today, quinoa is w fruit salad to eat today, quinoa i the perfect brunch for you. make...',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 34),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/images/wishlist.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 4,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cart(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  halfBackgroundColor, // halfBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Add To Basket",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
