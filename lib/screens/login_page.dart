import 'package:chatapp/widgets/custom_buttom.dart';
import 'package:chatapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset('assets/images/123.jpg'),
            Text(
              'Our Chat',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            CustomButon(),
          ],
        ),
      ),
    );
  }
}
