import 'package:flutter/material.dart';
import 'package:movie_app/locator.dart';
import 'package:movie_app/router.dart';
import 'package:movie_app/ui/theme/my_theme.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: MyTheme.defaultLightTheme,
      initialRoute: 'home',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
