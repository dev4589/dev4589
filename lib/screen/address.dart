import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class address extends StatefulWidget {
  const address({Key? key}) : super(key: key);

  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(bottom: 8.0, top: 20, left: 8.0, right: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo_dark.png",
                  ),
                ],
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  "WHERE SHOULD WE MEET YOU ?",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Center(
                child: Text(
                    "(You can Priv a service anywhere - home, office, gym, beach. Wherever\n your on-the-go lifestyle takes you, we can meet you there.)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      // textStyle: ,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_city),
                        hintText: 'ENTER YOUR ADDRESS',
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300, letterSpacing: 2.5),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)))),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
