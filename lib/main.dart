import 'package:coffeapp/utitlies/scroll_beahavior.dart';
import 'package:flutter/material.dart';
import 'package:coffeapp/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: OverScrollNever(),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}
