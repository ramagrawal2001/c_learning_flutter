import 'package:c_sikho/widgets/c_index_item.dart';
import 'package:c_sikho/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../data.dart';

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
      body: Container(
        color: Color(0xffEBC7E8),
        child: GridView(
          padding: const EdgeInsets.all(25),
          children: THEORY_DATA
              .map(
                (idata) => CIndexItem(
                  idata.id,
                  idata.title,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
