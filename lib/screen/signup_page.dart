import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late bool submitHover = false;
  TextStyle hintText = GoogleFonts.roboto(
      fontWeight: FontWeight.w300, fontSize: 14, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: SizedBox(
              width: 500,
              child: Padding(
                  padding: EdgeInsets.only(top: size.height / 6),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 30),
                        child: Text(
                          'CREATE AN ACCOUNT',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400, fontSize: 30),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Text(
                              'ACCOUNT DETAILS',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            xl: 6,
                            xs: 6,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                cursorColor: Colors.black,
                                cursorWidth: 1.5,
                                decoration: InputDecoration(
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.zero),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.zero),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                    hintStyle: hintText,
                                    hintText: 'FIRST NAME'),
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            xl: 6,
                            xs: 6,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                cursorColor: Colors.black,
                                cursorWidth: 1.5,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.zero),
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.zero),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                    hintStyle: hintText,
                                    hintText: 'LAST NAME'),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          cursorColor: Colors.black,
                          cursorWidth: 1.5,
                          decoration: InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              hintStyle: hintText,
                              hintText: 'EMAIL',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          cursorColor: Colors.black,
                          cursorWidth: 1.5,
                          decoration: InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              hintStyle: hintText,
                              hintText: 'MOBILE NUMBER',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            '*Phone numbers are only used for sending appointment updates',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Text(
                              'PASSWORD',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8),
                        child: TextField(
                          cursorColor: Colors.black,
                          cursorWidth: 1.5,
                          obscureText: true,
                          decoration: InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              hintStyle: hintText,
                              hintText: 'PASSWORD',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero)),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8),
                        child: TextField(
                          obscureText: true,
                          cursorColor: Colors.black,
                          cursorWidth: 1.5,
                          decoration: InputDecoration(
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.zero),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              hintStyle: hintText,
                              hintText: 'CONFIRM PASSWORD',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.zero)
                                    ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    'BY CLICKING "SIGN UP" YOU AGREE TO THE PRIV ',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14)),
                            TextSpan(
                                text: 'TERMS OF SERVICES ',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14)),
                            TextSpan(
                                text: 'AND ',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14)),
                            TextSpan(
                                text: 'PRIVACY POLICY ',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14)),
                          ]),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 45,
                          child: TextButton(
                            onHover: (value) {
                              submitHover = value;
                            },
                            child: Center(
                                child: Text(
                              'SUBMIT',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 15),
                            )),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => states
                                                .contains(MaterialState.hovered)
                                            ? Colors.pinkAccent
                                            : Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0)))),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(text: 'ALREADY HAVE AN ACCOUNT?  '),
                            TextSpan(
                                text: 'SIGN IN',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch('https://www.google.com');
                                  }),
                          ]),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
