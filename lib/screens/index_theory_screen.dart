import 'package:flutter/material.dart';

import '../data.dart';

class IndexTheoryScreen extends StatefulWidget {
  static const routeName = "/index-theory-screen";

  @override
  State<IndexTheoryScreen> createState() => _IndexTheoryScreenState();
}

class _IndexTheoryScreenState extends State<IndexTheoryScreen> {
  String indexId;
  int index;
  String indexTitle;
  Widget dataColumn;
  var loadInitialData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitialData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      indexId = routeArgs['indexId'];
      index = int.parse(routeArgs['index']);
      indexTitle = routeArgs['title'];

      dataColumn = THEORY_DATA.firstWhere((iid) {
        return iid.id == indexId;
      }).theoryContent[index];

      loadInitialData = true;
    }

    super.didChangeDependencies();
  }

  Column getColumn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(indexTitle,style: TextStyle(overflow: TextOverflow.visible),),
        backgroundColor: Color(0xff645CAA),
        leadingWidth: 25,
      ),
      body: dataColumn,
    );
  }
}
