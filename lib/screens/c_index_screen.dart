import 'package:c_sikho/widgets/index_grid.dart';
import 'package:c_sikho/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class CIndexScreen extends StatelessWidget {
  static const routeName = "/c-index";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        backgroundColor: Color(0xff645CAA),
      ),
      drawer: MainDrawer(),
      body: IndexGrid(),
    );
  }
}
