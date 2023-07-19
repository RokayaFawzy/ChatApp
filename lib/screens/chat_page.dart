import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static String id = 'ChatPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(kLogo),
              ),
            ),
            Text('Our chat'),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
