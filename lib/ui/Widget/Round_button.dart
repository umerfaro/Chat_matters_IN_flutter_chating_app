import 'package:flutter/material.dart';

import '../confirm_page.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool loading;

  const RoundButton(
      {Key? key, required this.text, required this.onTap, this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: const Color(0xffFDCC31),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: loading
              ? CircularProgressIndicator(strokeWidth: 3,color: Colors.black,)
              : Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
