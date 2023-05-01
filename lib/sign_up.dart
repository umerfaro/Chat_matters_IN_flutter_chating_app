import 'package:flutter/material.dart';
import 'package:lgoin_ui/Login_screen.dart';
import 'package:lgoin_ui/confirm_page.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name', //disply hiny
                          hintStyle: const TextStyle(
                            fontFamily: 'Rubik Regular',
                          ),
                          fillColor:
                          const Color(0xffF8f9FA), //filled background color
                          filled: true, //this will make the background colur visible
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xff323F4B),
                          ), //this display email icon prefix add start icon
                          focusedBorder: OutlineInputBorder(
                            // this will make border
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            // this will remove line which will show under the box
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Country/Region   +92 Pakistan', //disply hiny
                          hintStyle: const TextStyle(
                            fontFamily: 'Rubik Regular',
                          ),
                          fillColor:
                          const Color(0xffF8f9FA), //filled background color
                          filled: true, //this will make the background colur visible
                          prefixIcon: const Icon(
                            Icons.flag,
                            color: Color(0xff323F4B),
                          ), //this display email icon prefix add start icon
                          focusedBorder: OutlineInputBorder(
                            // this will make border
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            // this will remove line which will show under the box
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone', //disply hiny
                          hintStyle: const TextStyle(
                            fontFamily: 'Rubik Regular',
                          ),
                          fillColor:
                          const Color(0xffF8f9FA), //filled background color
                          filled: true, //this will make the background colur visible
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color(0xff323F4B),
                          ), //this display email icon prefix add start icon
                          // suffixIcon:const Icon(Icons.visibility_off_outlined),
                          focusedBorder: OutlineInputBorder(
                            // this will make border
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),

                          enabledBorder: OutlineInputBorder(
                            // this will remove line which will show under the box
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password', //disply hiny
                          hintStyle: const TextStyle(
                            fontFamily: 'Rubik Regular',
                          ),
                          fillColor:
                          const Color(0xffF8f9FA), //filled background color
                          filled: true, //this will make the background colur visible
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff323F4B),
                          ), //this display email icon prefix add start icon
                           suffixIcon:const Icon(Icons.visibility_off_outlined),
                          focusedBorder: OutlineInputBorder(
                            // this will make border
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),

                          enabledBorder: OutlineInputBorder(
                            // this will remove line which will show under the box
                            borderSide: const BorderSide(
                                color: Color(0xffE4E7EB)), //this is for border colour
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xffFDCC31),
                          borderRadius: BorderRadius.circular(20)),
                      child:  Center(
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>confirmscreen() ));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Rubik Regular',
                                color: Colors.black,fontWeight: FontWeight.bold ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: const  [
                           Text(
                            'Alternative login ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Rubik Regular',
                                color: Color(0xffFDCC31)),
                          )
                        ]

                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                         const Text(
                          'Have an account? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik Regular',
                              color: Color(0xff4C5990)),
                        ),
                         TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen() ));
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
