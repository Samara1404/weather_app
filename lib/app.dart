import 'package:flutter/material.dart';
import 'package:weather_app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
       
       
        
      ),
      home: HomePage(),
    );
  }
}