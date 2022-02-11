// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saloon/screen/signup_page.dart';

class loginPage1 extends StatefulWidget {
  const loginPage1({Key? key}) : super(key: key);

  @override
  _loginPage1State createState() => _loginPage1State();
}

class _loginPage1State extends State<loginPage1> {
  late bool submitHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
                            onHover: (value) {
                              submitHover = value;
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0))),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => states
                                                .contains(MaterialState.hovered)
                                            ? Color.fromARGB(255, 145, 120, 150)
                                            : Colors.black)),
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
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero),
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
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero),
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
                            onHover: (value) {
                              submitHover = value;
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0))),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => states
                                                .contains(MaterialState.hovered)
                                            ? Color.fromARGB(255, 145, 120, 150)
                                            : Colors.black)),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
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
