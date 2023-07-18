import 'package:chatapp/constant.dart';
import 'package:chatapp/screens/login_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_buttom.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
  String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 110,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 107,
                backgroundImage: AssetImage('assets/images/123.jpg'),
              ),
            ),
            Text(
              'Our Chat',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButon(
              text: 'REGISRER',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                    ),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
