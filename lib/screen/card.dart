import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  late bool submitHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Divider(
          height: MediaQuery.of(context).size.height / 4,
        ),
        Row(
          children: const [
            Text(
              "MAKEUP",
              style: TextStyle(
                letterSpacing: 1.5,
                fontFamily: 'Roboto',
                fontSize: 20,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 250,
              width: 200,
              child: MouseRegion(
                onHover: (event) {
                  setState(() {});
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "hello",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'roboto',
                              fontSize: 20),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("A new product is available",
                              style: TextStyle(
                                  fontFamily: 'roboto', fontSize: 15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Row(
                            children: [
                              const Text("85",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'roboto',
                                      fontSize: 20)),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: TextButton(
                                      onHover: (value) {
                                        submitHover = value;
                                      },
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.resolveWith(
                                                  (states) => states.contains(
                                                          MaterialState.hovered)
                                                      ? Colors.white
                                                      : Colors.black),
                                          backgroundColor:
                                              MaterialStateProperty.resolveWith(
                                                  (states) => states.contains(
                                                          MaterialState.hovered)
                                                      ? Colors.black
                                                      : Colors.white)),
                                      onPressed: () {},
                                      child: Text("ADD")),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
