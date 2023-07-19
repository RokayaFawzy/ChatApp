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
  GlobalKey<FormState> fromKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: fromKey,
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
                  if (fromKey.currentState!.validate()) {
                    try {
                      await registerUser();
                    } on FirebaseAuthException catch (ex) {
                      if (ex.code == 'weak-password') {
                        showSnackBar(context, 'weak password');
                      } else if (ex.code == 'email-already-in-use') {
                        showSnackBar(context, 'email already in use');
                      }
                    } catch (ex) {}
                    showSnackBar(context, 'there was an error');
                  }else{
                    
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
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('weak password'),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
