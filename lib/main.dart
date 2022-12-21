import 'package:c_sikho/widgets/quiz_option.dart';
import 'package:flutter/material.dart';

import './screens/c_sub_index_screen.dart';
import './screens/c_index_screen.dart';
import './screens/intro_slider.dart';
import './screens/index_theory_screen.dart';
import './screens/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C सीखो',
      routes: {
        '/': (context) => IntroSliderScreen(),
        //'/': (context) => CIndexScreen(),
        CIndexScreen.routeName: (context) => CIndexScreen(),
        CSubIndexScreen.routeName: (context) => CSubIndexScreen(),
        IndexTheoryScreen.routeName: (context) => IndexTheoryScreen(),
        QuizScreen.routeName: ((context) => QuizScreen()),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
