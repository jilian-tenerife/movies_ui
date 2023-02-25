import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movies_ui/contants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../components/mask_image.dart';

class movie_detail extends StatelessWidget {
  const movie_detail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xFF010000)],
          ),
        ),
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image 76.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.05,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Constants.kWhiteColor, width: 3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Constants.kWhiteColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Constants.kWhiteColor, width: 3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/settings (2).png'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 9,
            top: screenHeight * 0.40,
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFE53BB),
                    Color(0xFF09FBD3),
                  ],
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreyColor,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Constants.kWhiteColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.5,
              transform: Matrix4.translationValues(0, -screenHeight * 0.05, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.7,
                    child: Column(
                      children: [
                        Text(
                          'Eternals',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Constants.kWhiteColor.withOpacity(
                              0.85,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight <= 667 ? 10 : 20,
                        ),
                        Text(
                          '2021•Action-Adventure-Fantasy•2h36m',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Constants.kWhiteColor.withOpacity(
                              0.75,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RatingBar.builder(
                          itemSize: 14,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Constants.kYellowColor,
                          ),
                          onRatingUpdate: (rating) {
                            debugPrint(rating.toString());
                          },
                          unratedColor: Constants.kWhiteColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.',
                          textAlign: TextAlign.center,
                          maxLines: screenHeight <= 667 ? 2 : 4,
                          style: TextStyle(
                            fontSize: 14,
                            color: Constants.kWhiteColor.withOpacity(
                              0.75,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Container(
                    height: 2,
                    width: screenWidth * 0.8,
                    color: Constants.kWhiteColor.withOpacity(0.15),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 23,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Casts',
                              style: TextStyle(
                                color: Constants.kWhiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight <= 667 ? 10 : 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              minRadius: 16,
                              maxRadius: screenWidth <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage('assets/image 77.png'),
                            ),
                            Expanded(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: const [
                                    MaskedImage(
                                      asset: Constants.kMaskCast,
                                      mask: Constants.kMaskCast,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Angelina\nJolie',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              minRadius: 16,
                              maxRadius: screenWidth <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage('assets/image 78.png'),
                            ),
                            Expanded(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                    clipBehavior: Clip.none,
                                    children: const [
                                      MaskedImage(
                                        asset: Constants.kMaskCast,
                                        mask: Constants.kMaskCast,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Gemma\nChen',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              minRadius: 16,
                              maxRadius: screenWidth <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage('assets/image 79.png'),
                            ),
                            Expanded(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                    clipBehavior: Clip.none,
                                    children: const [
                                      MaskedImage(
                                        asset: Constants.kMaskCast,
                                        mask: Constants.kMaskCast,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Salma\nHayek',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              minRadius: 16,
                              maxRadius: screenWidth <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage('assets/image 80.png'),
                            ),
                            Expanded(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                    clipBehavior: Clip.none,
                                    children: const [
                                      MaskedImage(
                                        asset: Constants.kMaskCast,
                                        mask: Constants.kMaskCast,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Richard\nMadden',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
