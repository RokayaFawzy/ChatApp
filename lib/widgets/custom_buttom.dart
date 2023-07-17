import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text('LOGIN'),
      ),
    );
  }
}
