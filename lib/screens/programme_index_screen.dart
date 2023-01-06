import 'package:flutter/material.dart';
import '../content/program_data.dart';
import '../widgets/main_drawer.dart';
import './program_subindex_screen.dart';

class ProgramIndexScreen extends StatelessWidget {
  static const routeName = '/program-index-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programs"),
        backgroundColor: Color(0xff645CAA),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Color(0xffA084CA),
        child: ListView.builder(
          itemCount: PROGRAM_DATA.length,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                ProgramSubIndexScreen.routeName,
                arguments: index
              ),
              child: Card(
                margin: EdgeInsets.all(10),
                color: Color(0xffEBC7E8),
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    PROGRAM_DATA[index].title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff645CAA),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
