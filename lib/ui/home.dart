import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgoin_ui/ui/auth/Login_screen.dart';

import '../utils/utilitis.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final auth2 =  FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        length: 5,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xffFDCC31),
                title: const Center(child: Text("ChatMatters")),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      child: Icon(Icons.chat),
                    ),
                    Tab(
                      child: Icon(Icons.wallet),
                    ),
                    Tab(
                      child: Icon(Icons.access_time_filled_sharp),
                    ),
                    Tab(
                      child: Icon(Icons.settings),
                    ),
                    Tab(
                      child: Icon(Icons.account_circle),
                    ),
                  ],
                ),
                actions: [
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  PopupMenuButton(
                      color: const Color(0xff999999),
                      icon: const Icon(Icons.more_vert_outlined),
                      itemBuilder: (
                        context,
                      ) =>
                          [
                            const PopupMenuItem(
                              value: 1,
                              child: Text(
                                'New Chat',
                                style: TextStyle(
                                    fontFamily: 'Rubik Medium',
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                            const PopupMenuItem(
                              value: 2,
                              child: Text(
                                'Add Contacts',
                                style: TextStyle(
                                    fontFamily: 'Rubik Medium',
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                          ]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              body: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xffFDCC31),
                                  width: 3,
                                )),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/logo8.jpeg'),
                            ),
                          ),
                          title: Text("Jone wick"),
                          subtitle: Text("Paisa nikal oya"),
                          trailing: Text("10:46 PM"),
                        );
                      }),
                  const Image(
                     // width: 24.64,
                      //height: 26.8,
                      image: AssetImage('images/walletsssss.png')),
                  ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/logo10.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Moments',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 1) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/scan.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Scan',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 218,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 2) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/trans.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Transaction History',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 3) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/stories.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Stories',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 200,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/nearby.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'People nearby',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                      }),

                  ListView.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/secu.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Account Security',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 130,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 1) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/the.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Theme',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 215,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 2) {
                          return Container(
                              height: 30,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),

                          );
                        }
                        else if (index == 3) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/noti.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Notifications',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 4) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/gen.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'General',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 210,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 5) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),

                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/chat.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Chats',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 225,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 6) {
                          return Container(
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),


                                  Text(
                                    'Privacy',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xff333333),
                                    ),
                                  ),


                                ],
                              ));
                        }
                        else if (index == 7) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/Premissions.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Friend\'s Premissions',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 105,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 8) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/auto.png')),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'My information and authorization',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 9) {
                          return Container(
                              height: 20,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                             );
                        }
                        else if (index == 10) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/help.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Help & Feedback',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 125,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }

                        else if (index == 11){
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/about.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'About',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 210,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 12){
                          return Container(
                              height: 20,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                             );
                        }
                        else{
                          return Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFDCC31),
                                  borderRadius: BorderRadius.circular(20)),
                              child:  Center(
                                child: TextButton(
                                  onPressed: (){
                                    auth2.signOut().then((value) {
                                      setState(() {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen() ));
                                      });
                                    }).onError((error, stackTrace) {
                                      utils().tostMEssage(error.toString());
                                    });

                                    },
                                  child: const Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                          );
                        }


                      }),
                  ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                      width: 105.79,
                                      height: 105.7,
                                      image: AssetImage('images/userrrrr.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Umer Farooq\nUser ID:123123vg',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/qr.png')),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 1) {
                          return Container(
                              height: 20,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),

                          );
                        }
                        else if (index == 2) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/fav.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Favorites',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 185,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                        else if (index == 3) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/photo.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'My Posts',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 185,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else if (index == 4) {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/wallet.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Wallet',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 205,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        } else {
                          return Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: const Color(0xff999999),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/stor.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'My status',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Rubik Medium',
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 175,
                                  ),
                                  Image(
                                      width: 24.64,
                                      height: 26.8,
                                      image: AssetImage('images/arrow.png')),
                                ],
                              ));
                        }
                      }),
                ],
              )),
        ));
  }
}


