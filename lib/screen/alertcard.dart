import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alertCard extends StatefulWidget {
  const alertCard({Key? key}) : super(key: key);

  @override
  _alertCardState createState() => _alertCardState();
}

class _alertCardState extends State<alertCard> {
  var noOfService = "1 Service";
  var price = "75";
  late bool submitHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: RaisedButton(
        onPressed: () {
          showDialog(
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
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      title: Image.asset(
        'assets/myImages/makeupwitheye.png',
        fit: BoxFit.contain,
      ),
      insetPadding: EdgeInsets.symmetric(
          horizontal: size.width / 2.6, vertical: size.height / 10),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Makeup Application",
            style: TextStyle(fontFamily: 'roboto', fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              "Your appointment will start with a consultation. Next, primer, foundation, concealer, powder, bronzer, blush, eyeliner, eye-shadow, mascara, and lipstick/gloss will be applied. PRIV a natural day look, distinguished lip or a smokey eye! Please note, false lashes not included.",
              style: TextStyle(fontFamily: 'roboto', color: Colors.grey),
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          )
        ],
      ),
      actionsPadding: EdgeInsets.all(2),
      actionsAlignment: MainAxisAlignment.start,
      actions: [
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Icon(
                  CupertinoIcons.minus_circle,
                  color: Colors.black,
                )),
            Text('1'),
            TextButton(
                onPressed: () {},
                child: Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.black,
                )),
            Spacer(),
            Container(
              width: size.width / 15,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0))),
                  ),
                  child: Text('ADD',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            )
          ],
        )
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }
}
