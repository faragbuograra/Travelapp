import 'package:flutter/material.dart';
import 'package:my/screens/main_screen.dart';
import 'package:my/util/const.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      darkTheme: Constants.darkTheme,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: const Color(0xFF151026),
          ),
          bottomAppBarTheme: BottomAppBarTheme(
            color: const Color(0xFF151026),
          )),
      home: MainScreen(),
    );
  }
}
