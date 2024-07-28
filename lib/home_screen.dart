import 'package:basic_two/cart.dart';
import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

import 'food_details_page.dart';

final List<String> homScreenText = [
  'All',
  'Salad Combo',
  'Berry Combo',
  'Salad Fruit',
  'Quinoas',
  'Berry fruit',
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: AppBar(
              backgroundColor: backgroundColor,
              scrolledUnderElevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Define the action for your custom icon
                },
              ),
              automaticallyImplyLeading: false,
              title: const Text(
                'Welcome Chris',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                    color: textColorHead),
              ),
              // backgroundColor: Colors.transparent ,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    tooltip: 'Open shopping cart',
                    iconSize: 34,
                    color: halfBackgroundColor,
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SEARCH BAR HERE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.72,
                      height: 56,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          // contentPadding: EdgeInsets.all(16),
                          fillColor: inputBg,
                          border: borderSpecs,
                          hintText: 'Search for fruit, salad, combo',
                          hintStyle: const TextStyle(
                            color: inputTxt,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: backgroundGrey,
                        ),
                        width: 45,
                        height: 55,
                        child: Image.asset(
                          'assets/images/filter_menu.png',
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.error,
                              color: Colors.red,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // SEARCH BAR ENDS HERE
                const SizedBox(height: 15),

                // SUB HEADING HERE
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                      itemCount: homScreenText.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          color: inputBg,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.symmetric(
                              // vertical: 10.0,
                              horizontal: 10.0,
                            ),
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  homScreenText[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.w400,
                                    color: txtColorTwo,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                // SUB HEADING ENDS HERE

                const SizedBox(height: 28),
                RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                    text: 'Recommended Combo ',
                    style: TextStyle(
                      fontSize: 20,
                      color: textColorHead,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Opacity(
                  opacity: .5,
                  child: Container(
                    width: 120, height: 1,
                    color: Colors.red, // margin: EdgeInsets.only(
                    //     left: 43), e text
                  ),
                ),
                const SizedBox(height: 15),

                // RECOMMENDED COMBO HERE
                Container(
                  padding: EdgeInsets.all(6),
                  width: double.infinity,
                  height: 175,
                  color: inputBg,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodDetailsPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              // color: backgroundColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'assets/images/food_three.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '''Berry mango combo''',
                                    style: homeScreenTxtStyle(),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('N 2000',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Arial',
                                            fontWeight: FontWeight.w500,
                                            color: textColor,
                                          )),
                                      Icon(
                                        Icons.add,
                                        color: textColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // RECOMMENDED COMBO ENDS HERE

                // FOOTER SECTION HERE
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      // textAlign: TextAlign.start,
                      text: const TextSpan(
                        text: 'Hottest ',
                        style: TextStyle(
                          fontSize: 16,
                          color: textColorHead,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Opacity(
                      opacity: .5,
                      child: RichText(
                        // textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: 'Popular ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF253F66),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Opacity(
                      opacity: .5,
                      child: RichText(
                        // textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: 'New Combo ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF253F66),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Opacity(
                  opacity: .5,
                  child: Container(
                    width: 38, height: 2,
                    color: Colors.red,
                    //  margin: EdgeInsets.only(
                    //      left: 43),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(6),
                  width: double.infinity,
                  height: 175,
                  color: inputBg,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodDetailsPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              // color: backgroundColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'assets/images/food_three.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '''Berry mango combo''',
                                    style: homeScreenTxtStyle(),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('N 2000',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Arial',
                                            fontWeight: FontWeight.w500,
                                            color: textColor,
                                          )),
                                      Icon(
                                        Icons.add,
                                        color: textColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //SLIDE TWO

                Container(
                  padding: EdgeInsets.all(6),
                  width: double.infinity,
                  height: 175,
                  color: inputBg,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodDetailsPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              // color: backgroundColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'assets/images/food_three.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '''Berry mango combo''',
                                    style: homeScreenTxtStyle(),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('N 2000',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Arial',
                                            fontWeight: FontWeight.w500,
                                            color: textColor,
                                          )),
                                      Icon(
                                        Icons.add,
                                        color: textColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //SLIDE TWO ENDS HERE
                // FOOTER SECTION ENDS HERE
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home, color: halfBackgroundColor,),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.business_center, color: halfBackgroundColor,),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.support_agent_rounded, color: halfBackgroundColor,),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person, color: halfBackgroundColor,),
            ),
          ],
        ),
      ),
    );
  }
}
