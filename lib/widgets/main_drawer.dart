import 'package:flutter/material.dart';
import '../screens/c_index_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
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
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Learning Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.pink,
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
                  .pushReplacementNamed(CIndexScreen.routeName);
            },
          ),
          buildListTile(
            'About us',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(CIndexScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
