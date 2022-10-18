import 'package:drawer/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xff2F008E),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff2F008E),
          secondary: Color(0xffFDD303),
        ),
      ),
    );
  }
}
