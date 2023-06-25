import 'package:c_sikho/providers/auth.dart';
import 'package:c_sikho/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/c_index_screen.dart';
import '../screens/programme_index_screen.dart';
import '../screens/about_us_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Color(0xff645CAA),
            child: Text(
              'Learning Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Learn',
            Icons.book_outlined,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(CIndexScreen.routeName);
            },
          ),
          buildListTile(
            'Programs',
            Icons.book_outlined,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(ProgramIndexScreen.routeName);
            },
          ),
          buildListTile(
            'About us',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(AboutUsScreen.routeName);
            },
          ),
          buildListTile(
            'Logout',
            Icons.exit_to_app,
            () {
              Provider.of<Auth>(context, listen: false).logout();
              Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
