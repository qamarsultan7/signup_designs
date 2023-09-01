import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

import 'package:signup_designs/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: const Color.fromARGB(83, 12, 164, 235),
                borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Let\'s get started',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
              const Center(
                 child: Text(
                  
                   'Let\'s set up your account.Join us\nand start your adventure now!',
                   textAlign: TextAlign.center,
                   style: TextStyle(fontWeight: FontWeight.w500,wordSpacing: 1.5),
                 ),
               ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  margin: const EdgeInsets.all(20),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(
                            width: 105,
                            child: Divider(
                              thickness: 4,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                hintText: 'Full Name'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.blue,
                                ),
                                hintText: 'Email address'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                ),
                                hintText: 'Password'),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 40,
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>const login() ));
                },
                  child: const Text(
                    'I alreday have an account ',
                    style: TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
