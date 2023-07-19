import 'package:chatapp/constant.dart';
import 'package:chatapp/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_buttom.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  String id = 'registerPage';
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 110,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 107,
                backgroundImage: AssetImage('assets/images/123.jpg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Our Chat',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'pacifico',
                  ),
                ),
              ],
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
              onChange: (data) {
                email = data;
              },
              hintText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChange: (data) {
                password = data;
              },
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButon(
              onTap: () async {
               try{
                 var auth = FirebaseAuth.instance;
                UserCredential user = await auth.createUserWithEmailAndPassword(
                    email: email!, password: password!);
               }catch(ex){
              //  ScaffoldMessenger.
               }
                             },
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
          ],
        ),
      ),
    );
  }
}
