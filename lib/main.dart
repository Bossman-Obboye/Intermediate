import 'package:flutter/material.dart';
import 'package:flutter_application_1/animations/animation_screen.dart';
import 'package:flutter_application_1/animations/animationed_screen_two.dart';
// import 'package:flutter_application_1/custom_layout_and_paintion/custom_layout.dart';
// import 'package:flutter_application_1/responsive_screen/responsize_screen.dart';
// import 'package:flutter_application_1/custom_layout_and_paintion/trying.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          appBarTheme: const AppBarTheme(color: Colors.deepPurple)),

      home: const 
      // AnimatedScreenTwo(),
      Animations()
      // ResponsiveScreen(),
      // Trying()
      // CustomMultiChildLayoutApp(),
    ),
  );
}
