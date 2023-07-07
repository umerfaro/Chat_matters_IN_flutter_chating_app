
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../ui/auth/Login_screen.dart';
import '../ui/home.dart';

class SplashServices
{


  void islogin(BuildContext context)
  {

    final auth2 = FirebaseAuth.instance;
    final user = auth2.currentUser;



    if(user != null)
    {
    Timer(const Duration(seconds: 3), ()
    {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Homescreen()));
      }
    );

  }
    else
      {
        Timer(const Duration(seconds: 3), ()
        {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Loginscreen()));
        }
        );
      }

      }

}
