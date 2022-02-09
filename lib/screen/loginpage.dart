// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class loginPage1 extends StatefulWidget {
  const loginPage1({Key? key}) : super(key: key);

  @override
  _loginPage1State createState() => _loginPage1State();
}

class _loginPage1State extends State<loginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:  Column(
            children: [
              Divider(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      Text(
                        "PLEASE SIGN IN TO CONFIRM",
                        style: TextStyle(
                          letterSpacing: 2.5,
                          fontFamily: 'Roboto',
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "BOOKING",
                        style: TextStyle(
                          letterSpacing: 2.5,
                          fontFamily: 'Roboto',
                          fontSize: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0))),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black)),
                            child: Center(
                              child: const Text(
                                "LOGIN WITH FACEBOOK",
                                style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Text(
                              "EMAIL ADDRESS",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)))),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Text(
                              "PASSWORD",
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "FORGOT PASSWORD",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Roboto',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0))),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black)),
                            child: Center(
                              child: const Text(
                                "SIGN IN",
                                style: TextStyle(
                                  letterSpacing: 2.5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "DON'T HAVE AN ACCOUNT?",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Roboto',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
