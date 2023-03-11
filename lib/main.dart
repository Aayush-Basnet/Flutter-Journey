import 'package:flutter/material.dart';
import 'package:loginsystem/screen/loginscreen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login System",
      debugShowCheckedModeBanner: false,
      home: LoginScrren(),
    );
  }
}
