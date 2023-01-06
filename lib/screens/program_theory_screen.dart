import 'package:flutter/material.dart';

import '../content/program_data.dart';

class ProgramTheoryScreen extends StatefulWidget {
  static const routeName = "/program-theory-screen";

  @override
  State<ProgramTheoryScreen> createState() => _ProgramTheoryScreenState();
}

class _ProgramTheoryScreenState extends State<ProgramTheoryScreen> {
  String programId;
  int index;
  String programTitle;
  Widget dataColumn;
  var loadInitialData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitialData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      programId = routeArgs['programId'];
      index = int.parse(routeArgs['index']);
      programTitle = routeArgs['title'];

      dataColumn = PROGRAM_DATA.firstWhere((iid) {
        return iid.id == programId;
      }).programContent[index];

      loadInitialData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programTitle,style: TextStyle(overflow: TextOverflow.visible),),
        backgroundColor: Color(0xff645CAA),
        leadingWidth: 25,
      ),
      body: dataColumn,
    );
  }
}
