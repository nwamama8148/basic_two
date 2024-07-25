import 'package:basic_two/components/colors.dart';
import 'package:flutter/material.dart';

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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: AppBar(
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
          child: Column(
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
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                height: 193,
                color: Colors.red,
                child: ListView.builder(
                    itemCount: null,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 152,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            // color: backgroundColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: const Column(
                          children: [
                            Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                    'assets/images/food_three.png',
                                  ),
                                ),
                                Text('Berry mango combo'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('N 2000'),
                                    Icon(Icons.add),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              // RECOMMENDED COMBO ENDS HERE




              // RECOMMENDED COMBO HERE
              Container(
                width: double.infinity,
                height: 193,
                color: Colors.red,
                child: ListView.builder(
                    itemCount: null,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 152,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            // color: backgroundColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: const Column(
                          children: [
                            Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                    'assets/images/food_three.png',
                                  ),
                                ),
                                Text('Berry mango combo'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('N 2000'),
                                    Icon(Icons.add),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              // RECOMMENDED COMBO ENDS HERE
            ],
          ),
        ),
      ),
    );
  }
}
