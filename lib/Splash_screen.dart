
import 'package:flutter/material.dart';

import 'Login_screen.dart';

class Spalash_Screen extends StatefulWidget {
  const Spalash_Screen({Key? key}) : super(key: key);

  @override
  State<Spalash_Screen> createState() => _Spalash_ScreenState();
}

class _Spalash_ScreenState extends State<Spalash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginscreen()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const  [
          Center(
            child: Image(
                image: AssetImage('images/logo3.png')),
          ),
          Text(
            'ChatMatters™',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Rubik Medium',
                color: Color(0xff2D3142)),
          ),

        ],

      ),
    );
  }
}
