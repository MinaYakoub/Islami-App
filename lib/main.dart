import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quraan&sura/quraan_tab.dart';
import 'package:islami/home/quraan&sura/sura_detail.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetail.routeName:(context) => SuraDetail()
      },
      theme: MyTheme.lightTheme,
    );
    
  }
}
