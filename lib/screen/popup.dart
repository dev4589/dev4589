import 'package:flutter/material.dart';


class popupMenu extends StatefulWidget {
  const popupMenu({Key? key}) : super(key: key);

  @override
  _popupMenuState createState() => _popupMenuState();
}

class _popupMenuState extends State<popupMenu> {
  var noOfService = "1 Service";
  var price = "75";
  late bool submitHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RaisedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context),
          );
        },
        child: const Text("Press here"),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.none,
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text(
            noOfService + "  -  " + "\$" + price,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'roboto',
            ),
            textAlign: TextAlign.center,
          ),
          InkWell(
            child: const Text(
              "EDIT",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto'),
            ),
            onTap: () {},
          ),
          const Divider(),
          Container(
            color: Colors.black,
            child: TextButton(
              onHover: (value) {
                submitHover = value;
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(
                    horizontal: 20,
                  )),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0))),
                  backgroundColor: MaterialStateProperty.resolveWith((states) =>
                      states.contains(MaterialState.hovered)
                          ? const Color.fromARGB(255, 145, 120, 150)
                          : Colors.black)),
              child: const Center(
                child: Text(
                  "GO TO CHECKOUT ",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
