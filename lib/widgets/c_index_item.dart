import 'package:flutter/material.dart';
import '../screens/c_sub_index_screen.dart';

class CIndexItem extends StatelessWidget {
  final String id;
  final String title;

  CIndexItem(@required this.id, @required this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CSubIndexScreen.routeName,
          arguments: {'id': id, 'title': title},
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffA084CA), Color(0xffBFACE0)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Color(0xff645CAA), width: 1.0, style: BorderStyle.solid),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
      ),
    );
  }
}
