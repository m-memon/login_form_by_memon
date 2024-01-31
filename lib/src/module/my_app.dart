import "package:flutter/material.dart";
import "/src/screens/login_screen.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: LogInScreen(),
    );
  }
}

//  This code defines a Flutter application named `MyApp`. It imports the
//  necessary Flutter material package and a custom login screen module
//  (`login_screen.dart`) from the source directory. The `MyApp` class is a
//  stateless widget, and its `build` method returns a `MaterialApp` widget with
//  specific configurations, including turning off the debug banner, setting the
//  title to "MyApp," and setting the home screen to an instance of the
//  `LogInScreen` widget. The application's structure and initial screen are
//  thus defined in this code.