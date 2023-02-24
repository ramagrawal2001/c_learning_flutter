import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theoryContent.dart';

class IndexTheoryScreen extends StatelessWidget {
  static const routeName = "/index-theory-screen";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final indexId = routeArgs['indexId'];
    final index = int.parse(routeArgs['index']);
    final theory =
        Provider.of<TheoryContent>(context, listen: false).findById(indexId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          theory.subIndex[index],
          style: TextStyle(overflow: TextOverflow.visible),
        ),
        backgroundColor:Color(0xff645CAA),
        leadingWidth: 25,
      ),
      body: SingleChildScrollView(
        child: theory.theoryContent[index],
      ),
    );
  }
}
