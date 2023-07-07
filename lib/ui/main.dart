import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lgoin_ui/ui/auth/Login_screen.dart';
import 'package:lgoin_ui/ui/Splash_screen.dart';





void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const Login());
}

class Login extends StatelessWidget
{
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chatmatter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Spalash_Screen(),
    );
  }
}
