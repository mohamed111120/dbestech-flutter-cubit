import 'package:dbestech/utils/app_large_text.dart';
import 'package:dbestech/utils/app_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/responsive_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  final List<String> images = const [
    'assets/images/image 1.jpg',
    'assets/images/image 2.jpg',
    'assets/images/image 3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[index]), fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 130, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: 'Trips',
                      ),
                      AppText(
                        text: 'Mountain',
                        size: 26,
                      ),
                      Container(
                        width: 300,
                        child: AppText(
                          size: 14,
                            text:
                                'Flutter Master Class Travel App | Flutter 3.13.0 for Beginners to Advanced | iOS & Android Cubit'),
                      ),
                      SizedBox(height: 40,),
                      ResponsiveButton()
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?Colors.deepPurple:Colors.deepPurple.withOpacity(.3)
                        ),
                        width: 10,
                        height: index==indexDots?40:10,

                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
