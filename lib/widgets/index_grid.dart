import 'package:c_sikho/providers/theoryContent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'index_grid_item.dart';

class IndexGrid extends StatefulWidget {

  @override
  State<IndexGrid> createState() => _IndexGridState();
}

class _IndexGridState extends State<IndexGrid> {

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theoryContent = Provider.of<TheoryContent>(context);
    final theoryItem = theoryContent.items;
    return Container(
      color: Color(0xffEBC7E8),
      child: GridView(
        padding: const EdgeInsets.all(25),
        children: theoryItem
            .map(
              (idata) => ChangeNotifierProvider.value(
                value: idata,
                child: CIndexItem(),
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
    );
  }
}