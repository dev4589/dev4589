import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/Logo_dark.png",
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Container(
                  color: Colors.black12,
                  height: 300,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text(
                          "WHERE SHOULD WE MEET YOU ?? ",
                          style: TextStyle(fontSize: 20, letterSpacing: 5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "(You can Priv a service anywhere - home, office, gym, beach. Wherever your on-the-go lifestyle takes you, we can meet you there.)",
                          style: TextStyle(color: Colors.black38),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: address,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              labelText: "Address",
                              hintText: "Enter your address here !!"),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FlatButton(
                          height: 45,
                          minWidth: 150,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          color: Colors.black,
                          onPressed: () async {},
                          child: Text(
                            "Search",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
