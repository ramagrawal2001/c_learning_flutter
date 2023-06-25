import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/about-us-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
        backgroundColor: Color(0xff645CAA),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Color(0xffEBC7E8),
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We are a dedicated team of developers who have developed an Android application as our final year project. Our goal was to create an interactive and user-friendly platform to enhance the learning experience of students in the C programming language.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Made By :',
              style: TextStyle(
                  color: Color(0xff645CAA),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              '1. Bhargavi Deshmukh\n2. Priti Lohkare\n3. Ram Agrawal',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Guided By:',
              style: TextStyle(
                  color: Color(0xff645CAA),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              'Prof. Manjushree Laddha ma\'am',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
