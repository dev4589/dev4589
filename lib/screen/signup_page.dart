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
  TextStyle hintText =
      GoogleFonts.roboto(fontWeight: FontWeight.w100, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Divider(
                thickness: 1,
                height: size.height / 5,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                width: 600,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 30),
                          child: Text(
                            'CREATE AN ACCOUNT',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500, fontSize: 30),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 8),
                              child: Text(
                                'ACCOUNT DETAILS',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        ResponsiveGridRow(
                          children: [
                            ResponsiveGridCol(
                              xl: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                                      hintStyle: hintText,
                                      hintText: 'FIRST NAME'),
                                ),
                              ),
                            ),
                            ResponsiveGridCol(
                              xl: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                                      hintStyle: hintText,
                                      hintText: 'LAST NAME'),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                                hintStyle: hintText,
                                hintText: 'EMAIL',
                                border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                                hintStyle: hintText,
                                hintText: 'MOBILE NUMBER',
                                border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                '*Phone numbers are only used for sending appointment updates'),
                          )
                        ]),
                        Padding(
                          padding: EdgeInsets.all(8),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 8),
                              child: Text(
                                'Account Details',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintStyle: hintText,
                                hintText: 'PASSWORD',
                                border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintStyle: hintText,
                                hintText: 'CONFIRM PASSWORD',
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(0.0)))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text:
                                      'BY CLICKING "SIGN UP" YOU AGREE TO THE PRIV '),
                              TextSpan(text: 'TERMS OF SERVICES '),
                              TextSpan(text: 'AND '),
                              TextSpan(text: 'PRIVACY POLICY '),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextButton(
                              child: Center(child: Text('SUBMIT',style: GoogleFonts.roboto(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 20),)),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
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
                          padding: const EdgeInsets.all(8.0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Text(
// 'Hello to the world',
// style: GoogleFonts.roboto(fontWeight: FontWeight.w900),
// ),
