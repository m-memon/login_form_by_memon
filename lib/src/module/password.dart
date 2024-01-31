import 'package:flutter/material.dart';
import 'password/password_score_count_function.dart';

class DecidePasswordStrength {
  // DecidePasswordStrength
  String passwordComments = "";
  Color backgroundColors = Colors.transparent;
  Color fontColors = Colors.transparent;
  dynamic detectPasswordStrength(String passwordVlaue) {
    // detectPasswordStrength
    if (passwordVlaue == "") {
      passwordComments = "";
      backgroundColors = Colors.transparent;
      fontColors = Colors.transparent;
    } else if (passwordVlaue.length < 12) {
      passwordComments = "At Least 12 Characters Long But 14 Or More Is Better";
      backgroundColors = Colors.blue;
      fontColors = Colors.white;
    } else if (passwordScoreCountFunction(passwordVlaue) < 4) {
      passwordComments = "Very Weak Password Not Allowed";
      backgroundColors = Colors.red;
      fontColors = Colors.white;
    } else if (passwordScoreCountFunction(passwordVlaue) == 4) {
      passwordComments = "Weak Password Not Recommended";
      backgroundColors = Colors.orange;
      fontColors = Colors.white;
    } else if (passwordScoreCountFunction(passwordVlaue) > 4) {
      passwordComments = "Strong Password Recommended";
      backgroundColors = Colors.green;
      fontColors = Colors.white;
    } // if else if
  } // detectPasswordStrength
} // DecidePasswordStrength

//  This code is a Flutter class named `DecidePasswordStrength` that determines
//  the strength of a password based on its length and the results of a password
//  scoring function. It includes a method called `detectPasswordStrength` which
//  takes a password value as input and sets various properties like
//  `passwordComments`, `backgroundColors`, and `fontColors` based on the
//  assessed strength of the password. The class uses the
//  `passwordScoreCountFunction` from an imported file to calculate the password
//  score, and then assigns specific feedback and styling based on different
//  score ranges.