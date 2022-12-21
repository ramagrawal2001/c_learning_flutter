import 'dart:developer';

import 'package:c_sikho/screens/c_index_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key key}) : super(key: key);

  @override
  State<IntroSliderScreen> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSliderScreen> {
  List<ContentConfig> listContentConfig = [];
  Color activeColor = const Color(0xff0BEEF9);
  Color inactiveColor = const Color(0xff03838b);
  double sizeIndicator = 20;

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        title: "Learn C Language",
        maxLineTitle: 2,
        styleTitle: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "C programming has never been so much fun and easy. We reinvented the programming language experience.",
        styleDescription: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontStyle: FontStyle.italic,
        ),
        marginDescription: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        centerWidget: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'Assets/images/clogo.png',
              width: 300,
            ),
          ),
        ),
        //backgroundNetworkImage: "https://images.wallpapersden.com/image/download/programming-coding-language_bGhpbm6UmZqaraWkpJRmZW1lrWdoZmc.jpg",
        // backgroundFilterOpacity: 0.2,
        // backgroundFilterColor: Colors.redAccent,
        // onCenterItemPress: () {},
        colorBegin: Color(0xff89D4CF),
        colorEnd: Color(0xff734AE8),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        title: "Build Your Future",
        styleTitle: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "The future is not something to predict. The future is something to build.",
        styleDescription: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        centerWidget: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'Assets/images/ebook.png',
              width: 300,
            ),
          ),
        ),
        colorBegin: Color(0xff89D4CF),
        colorEnd: Color(0xff734AE8),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        title: "Get Placed In Good Company",
        styleTitle: TextStyle(
          color: Color(0xffFFDAB9),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        maxLineTitle: 2,
        description:
            "Choose a job you love, and you will never have to work a day in your life.",
        styleDescription: TextStyle(
          color: Color(0xffFFDAB9),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),
        centerWidget: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'Assets/images/manthumbs.png',
              width: 300,
            ),
          ),
        ),
        colorBegin: Color(0xff89D4CF),
        colorEnd: Color(0xff734AE8),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushReplacementNamed(CIndexScreen.routeName);
  }

  void onNextPress() {
    log("onNextPress caught");
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      size: 25,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      size: 25,
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      size: 25,
    );
  }

  Widget renderPrevBtn() {
    return const Icon(
      Icons.navigate_before,
      size: 25,
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      foregroundColor: MaterialStateProperty.all<Color>(activeColor),
      backgroundColor: MaterialStateProperty.all<Color>(inactiveColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        key: UniqueKey(),
        // Content config
        listContentConfig: listContentConfig,
        backgroundColorAllTabs: Colors.grey,

        // Skip button
        // renderSkipBtn: renderSkipBtn(),
        // skipButtonStyle: myButtonStyle(),
        isShowSkipBtn: false,

        renderPrevBtn: renderPrevBtn(),
        prevButtonStyle: myButtonStyle(),
        isShowPrevBtn: true,
        // Next button
        renderNextBtn: renderNextBtn(),
        onNextPress: onNextPress,
        nextButtonStyle: myButtonStyle(),

        // Done button
        renderDoneBtn: renderDoneBtn(),
        onDonePress: onDonePress,
        doneButtonStyle: myButtonStyle(),

        // Indicator
        indicatorConfig: IndicatorConfig(
          sizeIndicator: sizeIndicator,
          indicatorWidget: Container(
            width: sizeIndicator,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: inactiveColor),
          ),
          activeIndicatorWidget: Container(
            width: sizeIndicator,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: activeColor),
          ),
          spaceBetweenIndicator: 10,
          typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
        ),

        // Navigation bar
        navigationBarConfig: NavigationBarConfig(
          navPosition: NavPosition.bottom,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).viewPadding.top > 0 ? 20 : 10,
            bottom: MediaQuery.of(context).viewPadding.bottom > 0 ? 20 : 10,
          ),
          backgroundColor: Colors.black.withOpacity(0.5),
        ),

        // Scroll behavior
        // isAutoScroll: true,
        // isLoopAutoScroll: true,
        curveScroll: Curves.bounceIn,
      ),
    );
  }
}
