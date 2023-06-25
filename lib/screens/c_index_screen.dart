import 'package:c_sikho/providers/auth.dart';
import 'package:c_sikho/screens/auth_screen.dart';
import 'package:c_sikho/widgets/index_grid.dart';
import 'package:c_sikho/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theoryContent.dart';

class CIndexScreen extends StatefulWidget {
  static const routeName = "/c-index";

  @override
  State<CIndexScreen> createState() => _CIndexScreenState();
}

class _CIndexScreenState extends State<CIndexScreen> {
  var _isLoading = false;

  @override
  void initState() {
    setState(() {
      _isLoading = true;
    });

    Provider.of<TheoryContent>(context, listen: false)
        .fetchAndQuizStatus()
        .then((_) {
      setState(() {
        _isLoading = false;
      });
    });
    // if (!Provider.of<Auth>(context, listen: false).isAuth) {
    //   Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        backgroundColor: Color(0xff645CAA),
      ),
      drawer: MainDrawer(),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : IndexGrid(),
    );
  }
}
