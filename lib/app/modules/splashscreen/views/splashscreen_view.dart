import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:recipes/app/modules/login/views/login_view.dart';
import 'package:recipes/app/routes/app_pages.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
          // activeShape: CircleBorder(side: BorderSide.),
          activeColor: Colors.white,
          color: Colors.white),
      globalBackgroundColor: Color(0xFFfd7463),
      isBottomSafeArea: true,
      isTopSafeArea: true,
      done: Container(
          width: 360,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Color(0xFFfd7463)),
            ),
          )),
      onDone: () {
        Get.toNamed(Routes.LOGIN);
      },
      showNextButton: true,
      next: LoginView(),
      pages: [
        PageViewModel(
          useScrollView: false,
          title: "Enjoy  \n cooking",
          body: "Delicious and detailed restaurant recipes \n on your phone",
          image: Positioned(
            top: 200,
            bottom: 300,
            child: Image.asset(
              "assets/slachscreen.png",
            ),
          ),
          decoration: const PageDecoration(
            bodyAlignment: Alignment.topRight,
            imageAlignment: Alignment.bottomCenter,
            //fullScreen: true,
            titleTextStyle: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
            pageColor: Color(0xFFfd7463),
            bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ],
    );
    // Scaffold(
    //   backgroundColor: Color(0xFFfd7463),
    //   body: Column(
    //     children: [
    //       Text(
    //         'Enjoy  /n cooking',
    //         style: TextStyle(fontSize: 40, color: Colors.white),
    //       ),
    //       Text(
    //         'Delicious and detialed restaurant recipes /n on your phone',
    //         style: TextStyle(fontSize: 40, color: Colors.white),
    //       ),
    //       Image.asset("assets/slachscreen.png")
    //     ],
    //   ),
    // );
  }
}
