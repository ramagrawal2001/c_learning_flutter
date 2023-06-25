import 'package:c_sikho/providers/theoryContent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './index_theory_screen.dart';
import './quiz_screen.dart';

class CSubIndexScreen extends StatelessWidget {
  static const routeName = '/c-sub-index';

  @override
  Widget build(BuildContext context) {
    final theoryId = ModalRoute.of(context)?.settings.arguments as String;
    final theory = Provider.of<TheoryContent>(context,listen: false).findById(theoryId);
    final subIndexData = theory.subIndex;
    return Scaffold(
      appBar: AppBar(
        title: Text(theory.title),
        backgroundColor: Color(0xff645CAA),
      ),
      body: Container(
        color: Color(0xffA084CA),
        child: ListView.builder(
          itemCount: subIndexData.length + 1,
          itemBuilder: ((context, index) {
            return index < subIndexData.length
                ? InkWell(
                    onTap: (() => Navigator.of(context)
                            .pushNamed(IndexTheoryScreen.routeName, arguments: {
                          'indexId': theory.id,
                          'index': index.toString(),
                          //'title': subIndexData[index]
                        })),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      color: Color(0xffEBC7E8),
                      shadowColor: Colors.blueGrey,
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          subIndexData[index],
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff645CAA),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff645CAA),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 18),
                      ),
                      onPressed: () => Navigator.of(context).pushNamed(
                        QuizScreen.routeName,
                        arguments: {
                          'id': theory.id,
                          'title': theory.title,
                        },
                      ),
                      child: Text("Take a quiz"),
                    ),
                  );
          }),
        ),
      ),
    );
  }
}

// String indexId;
// String indexTitle;
// List<String> subIndexData;

// var loadInitialData = false;
// @override
// void didChangeDependencies() {
//   if (!loadInitialData) {
//     final routeArgs =
//         ModalRoute.of(context).settings.arguments as Map<String, String>;
//     indexTitle = routeArgs['title'];
//     indexId = routeArgs['id'];
//     subIndexData = THEORY_DATA.firstWhere((iid) {
//       return iid.id == indexId;
//     }).subIndex;
//     loadInitialData = true;
//   }

//   super.didChangeDependencies();
// }
