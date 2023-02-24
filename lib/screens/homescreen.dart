import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:movies_ui/contants.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * 0.1,
                    left: -88,
                    child: Container(
                      height: 166,
                      width: 166,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Constants.kGreenColor,
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 200,
                          sigmaY: 200,
                        ),
                        child: Container(
                          height: 166,
                          width: 166,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.3,
                    right: -100,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Constants.kPinkColor,
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 200,
                          sigmaY: 200,
                        ),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(
                    child: Text(
                      "What would you",
                      style: TextStyle(
                          fontSize: 28,
                          color: Constants.kWhiteColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: Text(
                      "like to watch?",
                      style: TextStyle(
                          fontSize: 28,
                          color: Constants.kWhiteColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0),
                      width: 360,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constants.kWhiteColor.withOpacity(0.2),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 320,
                            child: TextField(
                              style: TextStyle(
                                color: Constants.kWhiteColor.withOpacity(0.6),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color:
                                        Constants.kWhiteColor.withOpacity(0.6)),
                                icon: Icon(
                                  Icons.search,
                                  color: Constants.kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.mic,
                            color: Constants.kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'New movies',
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
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
