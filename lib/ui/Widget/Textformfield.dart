import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final Controller;
  final String hinttext;
  Icon icon;

  Textformfield(
      {Key? key,
        required this.Controller,
      required this.hinttext,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: hinttext == "Email" ? TextInputType.emailAddress : TextInputType.text,
      controller: Controller,
      obscureText: hinttext == "Password" ? true : false,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(
          fontFamily: 'Rubik Regular',
        ),
        fillColor: const Color(0xffF8f9FA),
        filled: true,
        prefixIcon: icon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return   hinttext == "Password"? 'Enter password' : 'Enter Some Text';
        }
        else
          return null;
      },
    );
  }
}
