import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:movies_ui/contants.dart';

import '../components/mask_image.dart';
import '../data/movie.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'movie_detail');
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: newMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Upcoming Movies',
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: upcomingMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: upcomingMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constants.kPinkColor.withOpacity(0.2),
              Constants.kGreenColor.withOpacity(0.2)
            ],
          ),
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Constants.kPinkColor,
                Constants.kGreenColor,
              ],
            ),
          ),
          child: RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              fillColor: const Color(0xff404c57),
              child: Image.asset('assets/symbol.png')),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 92,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kWhiteColor.withOpacity(0.1),
            Constants.kWhiteColor.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kPinkColor,
            Constants.kGreenColor,
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: Image.asset('assets/home.png')),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/play2.png'),
              ),
            ),
            const Expanded(
              child: Text(''),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {}, icon: Image.asset('assets/downloads.png')),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/download (2).png'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
