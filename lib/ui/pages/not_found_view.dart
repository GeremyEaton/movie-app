import 'package:flutter/material.dart';
import 'package:movie_app/ui/menu_view.dart';

class NotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      body: Center(
        child: Text('No route defined'),
      ),
    );
  }
}
