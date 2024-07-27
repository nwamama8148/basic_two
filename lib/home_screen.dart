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
                    onPressed: () {},
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
                    Container(
                      width: 320,
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
                        width: 35,
                        height: 55,
                        child: Image.asset(
                          'assets/images/filter_menu.png',
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.error, color: Colors.red,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                )
                // SEARCH BAR ENDS HERE
                ,
                const SizedBox(height: 20),
                // SUB HEADING HERE
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                      itemCount: homScreenText.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          // margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          padding: const EdgeInsets.symmetric(
                            // vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(11)),
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
                        );
                      }),
                ),
                // SUB HEADING ENDS HERE

                const SizedBox(height: 20),
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
                const SizedBox(height: 5),
                Container(
                  width: 120, // Set the desired width of the underline
                  height: 2, // Set the desired height of the underline
                  color: Colors.red, // Set the desired color of the underline
                  // margin: EdgeInsets.only(
                  //     left: 43), // Adjust the margin to center it under the text
                ),
                const SizedBox(height: 10),

                // RECOMMENDED COMBO HERE
                Container(
                  width: double.infinity,
                  height: 173,
                  color: Colors.transparent,
                  child: ListView.builder(
                      itemCount: null,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FoodDetailsPage()),
                            );
                          },
                          child: Container(
                            width: 152,
                            // margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                      'Berry mango combo',
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
                      }),
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
                  width: double.infinity,
                  height: 173,
                  color: Colors.transparent,
                  child: ListView.builder(
                      itemCount: null,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FoodDetailsPage()),
                            );
                          },
                          child: Container(
                            width: 152,
                            // margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                      'Berry mango combo',
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
                      }),
                ),
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
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.business_center),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.support_agent_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
