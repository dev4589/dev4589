import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RaisedButton(
        onPressed: () {
          showDialog(
            useSafeArea: true,
            barrierDismissible: true,
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context),
          );
        },
        child: const Text("Press here"),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    var noOfService = "1 Service";
    var price = "75";
    late bool submitHover = false;

    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      title: Column(
        children: [
          Text(
            noOfService + " - " + "\$" + price,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'roboto', fontSize: 14),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: InkWell(
              onTap: () {},
              child: Text(
                "EDIT",
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          Divider(),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [TextButton(onPressed: () {}, child: Text('GO TO CHECKOUT'))],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    );
  }
}
