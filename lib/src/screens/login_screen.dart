import "package:flutter/material.dart";
import 'portrait/login_screen.dart';
import "landscape/login_screen.dart";
import "square/login_screen.dart";
import "/src/module/password.dart";

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late final FocusNode emailFocusNode;
  late final TextEditingController _emailController;
  late final FocusNode pswdFocusNode;
  late final TextEditingController _pswdController;
  late bool emailBool;
  late bool pswdBool;
  late bool pswdVisible;
  late DecidePasswordStrength passwordStrengthIndicator;

  myFunction() {
    emailFocusNode.addListener(() {
      setState(() {
        if (emailFocusNode.hasFocus) {
          emailBool = true;
        } else if (!emailFocusNode.hasFocus) {
          emailBool = false;
        }
      });
    });
    pswdFocusNode.addListener(() {
      setState(() {
        if (pswdFocusNode.hasFocus) {
          pswdBool = true;
        } else if (!pswdFocusNode.hasFocus) {
          pswdBool = false;
        }
      });
    });
    _pswdController.addListener(() {
      setState(() {
        passwordStrengthIndicator.detectPasswordStrength(_pswdController.text);
      });
    });
  }

  // Method to update pswdVisible from child
  void updatePswdVisible(bool newValue) {
    setState(() {
      pswdVisible = newValue;
    });
  }

  void onloginOnPressed() {}

  void onLoginWithFacebookOnPressed() {}

  void onDontHaveAnAccountOnPressed() {}

  @override
  void initState() {
    super.initState();
    emailFocusNode = FocusNode();
    _emailController = TextEditingController();
    pswdFocusNode = FocusNode();
    _pswdController = TextEditingController();
    emailBool = false;
    pswdBool = false;
    pswdVisible = true;
    passwordStrengthIndicator = DecidePasswordStrength();
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
    _emailController.dispose();
    pswdFocusNode.dispose();
    _pswdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myFunction(); // Call myFunction() here to ensure it is executed on each rebuild
    double scnW = MediaQuery.of(context).size.width;
    double scnH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: scnH > scnW
          ? PortraitLogInScreen(
              emailFocusNode: emailFocusNode,
              emailController: _emailController,
              pswdFocusNode: pswdFocusNode,
              pswdController: _pswdController,
              emailBool: emailBool,
              pswdBool: pswdBool,
              pswdVisible: pswdVisible,
              onUpdatePswdVisible: updatePswdVisible,
              passwordStrengthIndicator: passwordStrengthIndicator,
              loginOnPressed: onloginOnPressed,
              loginWithFacebookOnPressed: onLoginWithFacebookOnPressed,
              dontHaveAnAccountOnPressed: onDontHaveAnAccountOnPressed,
            )
          : scnH < scnW
              ? LandscapeLogInScreen(
                  emailFocusNode: emailFocusNode,
                  emailController: _emailController,
                  pswdFocusNode: pswdFocusNode,
                  pswdController: _pswdController,
                  emailBool: emailBool,
                  pswdBool: pswdBool,
                  pswdVisible: pswdVisible,
                  onUpdatePswdVisible: updatePswdVisible,
                  passwordStrengthIndicator: passwordStrengthIndicator,
                  loginOnPressed: onloginOnPressed,
                  loginWithFacebookOnPressed: onLoginWithFacebookOnPressed,
                  dontHaveAnAccountOnPressed: onDontHaveAnAccountOnPressed,
                )
              : SquareLogInScreen(
                  emailFocusNode: emailFocusNode,
                  emailController: _emailController,
                  pswdFocusNode: pswdFocusNode,
                  pswdController: _pswdController,
                  emailBool: emailBool,
                  pswdBool: pswdBool,
                  pswdVisible: pswdVisible,
                  onUpdatePswdVisible: updatePswdVisible,
                  passwordStrengthIndicator: passwordStrengthIndicator,
                  loginOnPressed: onloginOnPressed,
                  loginWithFacebookOnPressed: onLoginWithFacebookOnPressed,
                  dontHaveAnAccountOnPressed: onDontHaveAnAccountOnPressed,
                ),
    );
  }
}

//  This code defines a Flutter widget named `LogInScreen` that represents the
//  login screen of a mobile application. It includes implementations for
//  portrait, landscape, and square layouts, each with distinct UI arrangements.
//  The widget uses various controllers and focus nodes for handling email and
//  password input, and it integrates a custom module for password strength
//  evaluation (`DecidePasswordStrength`). Additionally, the code includes
//  methods for handling different login-related actions, such as pressing the
//  login button, login with Facebook, and navigating to a registration screen.
//  The widget adjusts its appearance based on the device's screen orientation.