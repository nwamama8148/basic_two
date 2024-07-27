import 'package:basic_two/cart.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> foodDesc = [
  'Red Quinoa',
  'Lime',
  'Honey',
  'BlueBerry',
  'Mango',
  'Strawberries',
  'FreshMint',
];

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: halfBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: halfBackgroundColor,
                    // borderRadius: const BorderRadius.only(
                    //   bottomLeft: Radius.circular(30.0),
                    //   bottomRight: Radius.circular(30.0),
                    // ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/food_three.png',
                        fit: BoxFit.contain,
                        height: 146,
                        width: 146,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    height: 32,
                    top: 28,
                    left: 24,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_sharp),
                        label: const Text('Back'))),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Quinoa Fruit Salad',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: textColorHead,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/remove.png',
                            width: 32,
                            height: 32,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: textColorHead,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/images/plus_up.png',
                            width: 32,
                            height: 32,
                          ),
                        ],
                      ),
                      const Text(
                        'N 2000 ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: textColorHead,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'This combo contains:',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 85,
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: foodDesc.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisExtent: 38,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 4,
                      ),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: inputBg,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            foodDesc[index],
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: Text(
                        '''If you are looking for a new fruit salad to eat today, you are looking for a new fruit salad to eat today you are looking for a new fruit salad to eat today you are looking for a new fruit salad to eat today quinoa is the perfect brunch for you. make''',
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                  

                  // FOOTER SECTION
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                            child: Image.asset('assets/images/wishlist.png', width: 89.0, height: 48.0,),
                            ),
                            SizedBox(width: 50,),
                            
                        Expanded(
                          flex: 10,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Cart(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: halfBackgroundColor,
                              // fixedSize: const Size(370, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Add To Basket",
                              style: TextStyle(
                                color: backgroundColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
