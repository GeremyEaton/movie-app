import 'package:flutter/material.dart';
import 'package:movie_app/ui/menu_view.dart';
import 'package:movie_app/ui/shell_app.dart';

class PageHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Menu(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
