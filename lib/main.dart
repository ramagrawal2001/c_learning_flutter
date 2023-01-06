import 'package:c_sikho/providers/theoryContent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/c_sub_index_screen.dart';
import './screens/c_index_screen.dart';
import './screens/intro_slider.dart';
import './screens/index_theory_screen.dart';
import './screens/quiz_screen.dart';
import './screens/programme_index_screen.dart';
import './screens/program_subindex_screen.dart';
import './screens/about_us_screen.dart';
import './screens/program_theory_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TheoryContent(),
      child: MaterialApp(
        title: 'C सीखो',
        routes: {
          '/': (context) => IntroSliderScreen(),
          //'/': (context) => ProgramIndexScreen(),
          CIndexScreen.routeName: (context) => CIndexScreen(),
          CSubIndexScreen.routeName: (context) => CSubIndexScreen(),
          IndexTheoryScreen.routeName: (context) => IndexTheoryScreen(),
          QuizScreen.routeName: ((context) => QuizScreen()),
          ProgramIndexScreen.routeName: (context) => ProgramIndexScreen(),
          ProgramSubIndexScreen.routeName:(context) => ProgramSubIndexScreen(),
          AboutUsScreen.routeName:(context) => AboutUsScreen(),
          ProgramTheoryScreen.routeName:(context) => ProgramTheoryScreen()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
