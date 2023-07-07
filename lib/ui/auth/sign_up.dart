import 'package:flutter/material.dart';
import 'package:lgoin_ui/ui/auth/Login_screen.dart';
import 'package:lgoin_ui/ui/confirm_page.dart';

import '../../utils/utilitis.dart';
import '../Widget/Round_button.dart';
import '../Widget/Textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final NameController = TextEditingController();
  final phoneController = TextEditingController();
  bool loading=false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    NameController.dispose();
    phoneController.dispose();
  }

  void signup()
  {
    setState(() {
      loading=true;

    });
    if (_formKey.currentState!.validate()) {

      _auth.createUserWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passwordController.text.toString()).then((value) {
        setState(() {
          loading=false;
          utils().tostMEssage("USER CREATED");
        });

      }).onError((error, stackTrace){
        utils().tostMEssage(error.toString());
        setState(() {
          loading=false;
        });
      });
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => const ConfirmPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                  "Sign Up to ChatMatter™",
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
                            Controller: NameController,
                            hinttext: "Name",
                            icon: const Icon(Icons.person,
                                color: Color(0xff323F4B)),
                          ),

                        ),
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
                              left: 20, right: 20, top: 0),
                          child: Textformfield(
                            Controller: phoneController,
                            hinttext: 'Phone Number',
                            icon: const Icon(Icons.phone,
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
                const SizedBox(height: 20),
                RoundButton(
                  text: 'Sign Up',
                  loading: loading,
                  onTap: () {
                    signup();
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Alternative login ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xffFDCC31)),
                      )
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account? ',
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
                                builder: (context) => Loginscreen()));
                      },
                      child: const Text(
                        'Login Here!',
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
        ));
  }
}
