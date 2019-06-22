import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorLight,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu', style: Theme.of(context).textTheme.title),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(
              'Accueil',
              style: Theme.of(context).textTheme.subhead,
            ),
            leading: Icon(Icons.home),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, 'home');
            },
          ),
          ListTile(
            title: Text(
              'Marvel Movie',
              style: Theme.of(context).textTheme.subhead,
            ),
            leading: Icon(Icons.favorite_border),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, 'marvel');
            },
          ),
        ],
      ),
    );
  }
}
