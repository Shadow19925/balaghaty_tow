
import 'package:balaghaty_tow/presentation/common/CutomButton.dart';
import 'package:balaghaty_tow/presentation/onboarding/view/page_part/page_view.dart';
import 'package:balaghaty_tow/resources/color_manager.dart';

import 'package:balaghaty_tow/resources/routes_manager.dart';
import 'package:balaghaty_tow/resources/size_config.dart';
import 'package:balaghaty_tow/resources/values_manager.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class onBoardingView extends StatefulWidget {
  const onBoardingView({Key? key}) : super(key: key);

  @override
  State<onBoardingView> createState() => _onBoardingViewState();
}



class _onBoardingViewState extends State<onBoardingView> {
  PageController? controller;
  late Color _color;
  @override
  void initState() {
    _color = Color(0xff102E91);
    controller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {

        });
      });
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor:color_manager.background,
          body: Stack(children: [
            Positioned(
                left: 0, right: 0,
                bottom: Size_config.defaultSize! * 20,
                child: DotsIndicator(dotsCount: 3,
                  position: controller!.hasClients ? controller!.page! : 0,
                  decorator: DotsDecorator(
                    shape: CircleBorder(
                      side: BorderSide(color: _color),
                    ),
                    color: Colors.transparent,
                    activeColor: _color,
                  ),
                )),
            Positioned(
                top: Size_config.defaultSize! * 5,
                right:AppSize.s32,
                child: Visibility(
                  visible: (controller!.hasClients) && (controller!.page == 2)
                      ? false
                      : true,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.loginRout);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: FontSize.s14,
                        color: color_manager.Lightgray,
                      ),
                      softWrap: false,
                    ),
                  ),
                )),

            Page_view(controller),
            Positioned(

              left: Size_config.defaultSize! * 10,
              right: Size_config.defaultSize! * 10,
              bottom: Size_config.defaultSize! * 10,
              child: CustomGenralButton(
                text: (controller!.hasClients) && (controller!.page == 2)
                    ? "Get Started"
                    : "Next",

                onTap: () {
                  if (controller!.page != 2) {
                    controller!.nextPage(duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                    print(controller!.page);
                  }
                  else if (controller!.page! == 2) {
                    Navigator.pushNamed(context, Routes.loginRout);
                  }
                },
              ),
            ),
          ],
          ),
        ),
      );
    }
  }
