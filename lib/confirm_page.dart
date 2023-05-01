import 'package:flutter/material.dart';
import 'package:lgoin_ui/verification_code.dart';

class confirmscreen extends StatelessWidget {
  const confirmscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
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
                          width: 244.49,
                          height: 240.67,
                          image: AssetImage('images/logo3.png')),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [

                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                      child: Text(
                        "Please use the link below to verify your\nphone number and start your journey",
                        textAlign: TextAlign.center, // for allinging text to center
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff92959F)),
                      )),

                  const SizedBox(height: 80),
                  Container(
                    height: 57,
                    width: 332.35,
                    decoration: BoxDecoration(
                        color: const Color(0xffFDCC31),
                        borderRadius: BorderRadius.circular(20)),
                    child:   Center(
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>verification_code() ));
                        },
                        child: const Text(
                          'Verify Phone',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Rubik Regular',
                              color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  const [
                      Text(
                        'Do you have any Question? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff4C5990)),
                      ),
                      Text(
                        'ChatMatter@mail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xffFDCC31)),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
