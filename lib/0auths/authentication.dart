import 'package:basic_two/components/colors.dart';
import 'package:basic_two/home_screen.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    
    return Scaffold(
    
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                // clipBehavior: Clip.none,
                // clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.6,
                    color: halfBackgroundColor,
                    child: Image.asset(
                      'assets/images/welcome_img_two.png',
                      height: 281,
                      width: 301,
                    ),
                  ),
                  Positioned(
                    top: 20, // Position the icon above the container
                    right: 40, // Center the icon horizontally
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.cancel_outlined,
                        fill: 0.5,
                        size: 50,
                        color: textColorBody,
                      ),
                    ),
                  ),
                ],
              ),

// SECOND BODY PART
              const SizedBox(
                height: 33,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What is your firstname?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'Arial',
                        color: textColorBody,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: const EdgeInsets.all(16),
                        fillColor: inputBg,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Chris',
                        hintStyle: const TextStyle(
                          color: inputTxt,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: halfBackgroundColor,
                        fixedSize: const Size(370, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Let`s Continue",
                        style: TextStyle(
                          color: backgroundColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
