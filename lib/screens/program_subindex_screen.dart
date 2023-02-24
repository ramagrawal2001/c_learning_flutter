import 'package:c_sikho/screens/program_theory_screen.dart';
import 'package:flutter/material.dart';
import '../content/program_data.dart';
import '../widgets/main_drawer.dart';

class ProgramSubIndexScreen extends StatelessWidget {
  static const routeName = '/program-subindex-screen';

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context).settings.arguments as int;
    final subList = PROGRAM_DATA[index].subIndex;
    final subIndexTitle = PROGRAM_DATA[index].title;
    final programId = PROGRAM_DATA[index].id;
    return Scaffold(
      appBar: AppBar(
        title: Text(subIndexTitle),
        backgroundColor: Color(0xff645CAA),
      ),
      body: Container(
        color: Color(0xffA084CA),
        child: ListView.builder(
          itemCount: subList.length,
          itemBuilder: ((context, i) {
            return InkWell(
              onTap: (() => Navigator.of(context)
                      .pushNamed(ProgramTheoryScreen.routeName, arguments: {
                    'programId': programId,
                    'index': i.toString(),
                    'title': subList[i],
                  })),
              child: Card(
                margin: EdgeInsets.all(10),
                color: Color(0xffEBC7E8),
                shadowColor: Colors.blueGrey,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    subList[i],
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
