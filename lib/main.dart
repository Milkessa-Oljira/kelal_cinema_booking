import 'package:flutter/material.dart';
import 'package:kelal_cinema_booking/routes.dart';
import 'package:kelal_cinema_booking/screens/home/home_screen.dart';
import 'package:kelal_cinema_booking/theme.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
