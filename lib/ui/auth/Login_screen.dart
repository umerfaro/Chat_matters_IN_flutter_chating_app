import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lgoin_ui/ui/confirm_page.dart';
import 'package:lgoin_ui/ui/auth/sign_up.dart';

import '../../utils/utilitis.dart';
import '../Widget/Round_button.dart';
import '../Widget/Textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../home.dart';

class Loginscreen extends StatefulWidget
{
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen>
{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void login() {
    setState(() {
      loading = true;
    });
    if (_formKey.currentState!.validate()) {
      _auth
          .signInWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        utils().tostMEssage(value.user!.email.toString());

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Homescreen()));
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        debugPrint(error.toString());
        utils().tostMEssage(error.toString());
        setState(() {
          loading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: () async {
            SystemNavigator.pop();
            return true;
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                          width: 50,
                          height: 50,
                          image: AssetImage('images/logo2.png')),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'ChatMatters™',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Rubik Medium',
                                color: Color(0xff2D3142)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                      child: Text(
                    "Login to ChatMatter™",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142)),
                  )),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(
                      child: Text(
                    "Keep your chat safe",
                    textAlign: TextAlign.center, // for allinging text to center
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xff4C5980)),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Textformfield(
                              Controller: emailController,
                              hinttext: 'Email',
                              icon: const Icon(Icons.email,
                                  color: Color(0xff323F4B)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: Textformfield(
                              Controller: passwordController,
                              hinttext: 'Password',
                              icon: const Icon(Icons.lock,
                                  color: Color(0xff323F4B)),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 100),
                  RoundButton(
                    text: 'Login',
                    loading: loading,
                    onTap: () {
                      login();
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have and account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff4C5990)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: const Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xffFDCC31)),
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ));
  }
}
