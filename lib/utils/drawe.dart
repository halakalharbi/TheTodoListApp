import 'package:flutter/material.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}
class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container( // Set the desired color for the upper section
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/hutao.png'),
              ),
              accountName: Text("Hala Alharbi"),
              accountEmail: Text("halak.alharbi@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.green[200], // Set the desired color for the rest of the header
              ),
            ),
          ),
          ListTile(
            title: Text("Home Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: Colors.green[100],
          ),
          ListTile(
            title: Text("login"),
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
            splashColor: Colors.green[100],
          ),
          ListTile(
            title: Text("signup"),
            onTap: () {
              Navigator.of(context).pushNamed('/signup');
            },
            splashColor: Colors.green[100],
          ),
          ListTile(
            title: Text("To do list"),
            onTap: () {
              Navigator.of(context).pushNamed('/todo');
            },
            splashColor: Colors.green[100],
          ),
        ],
      ),
    );
  }
}