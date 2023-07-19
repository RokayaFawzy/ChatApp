import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText,this.onChange});
  String? hintText;
 Function(String)? onChange; 
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange  ,
      decoration: InputDecoration(
        hintText:hintText,
        hintStyle:TextStyle(
          color: Colors.white,
        ) ,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
