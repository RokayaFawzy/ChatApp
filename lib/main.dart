import 'package:chatapp/screens/login_page.dart';
import 'package:chatapp/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        RegisterPage().id : (context) => RegisterPage(),
      },
      home: LoginPage(),
    );
  }
}
