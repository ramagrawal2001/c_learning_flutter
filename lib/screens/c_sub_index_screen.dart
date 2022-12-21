import 'package:flutter/material.dart';
import '../data.dart';
import './index_theory_screen.dart';
import './quiz_screen.dart';

class CSubIndexScreen extends StatefulWidget {
  static const routeName = '/c-sub-index';

  @override
  State<CSubIndexScreen> createState() => _CSubIndexScreenState();
}

class _CSubIndexScreenState extends State<CSubIndexScreen> {
  String indexId;
  String indexTitle;
  List<String> subIndexData;

  var loadInitialData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitialData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      indexTitle = routeArgs['title'];
      indexId = routeArgs['id'];
      subIndexData = THEORY_DATA.firstWhere((iid) {
        return iid.id == indexId;
      }).subIndex;
      loadInitialData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(indexTitle),
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
                          'indexId': indexId,
                          'index': index.toString(),
                          'title': subIndexData[index]
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
                      arguments: {'id': indexId, 'title': indexTitle},
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

// TextButton(
//               onPressed: () => Navigator.of(context).pushNamed(
//                 QuizScreen.routeName,
//                 arguments: {'id': indexId, 'title': indexTitle},
//               ),
//               child: Text("Take a quiz"),
//             ),



// Container(
//             color: Color(0xffA084CA),
//             child: ListView.builder(
//               itemCount: subIndexData.length,
//               itemBuilder: ((context, index) {
//                 return InkWell(
//                   onTap: (() => Navigator.of(context)
//                           .pushNamed(IndexTheoryScreen.routeName, arguments: {
//                         'indexId': indexId,
//                         'index': index.toString(),
//                         'title': subIndexData[index]
//                       })),
//                   child: Card(
//                     margin: EdgeInsets.all(10),
//                     color: Color(0xffEBC7E8),
//                     shadowColor: Colors.blueGrey,
//                     elevation: 10,
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Text(
//                         subIndexData[index],
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff645CAA),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ),