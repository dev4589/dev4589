import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  _DetailsCardState createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  late bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveGridCol(
              xl: 12,
              md: 12,
              xs: 12,
              child: Text('hello')),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (BuildContext context) => _buildPopupDialog(context),
                  );
                },
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(

                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(

                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          ResponsiveGridCol(
              xl: 4,
              md: 6,
              xs: 12,
              child: InkWell(
                onTap: () => null,
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: Card(
                  child: SizedBox.fromSize(
                    size: Size(50, 200),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 11 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [Text('hello')],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ]);
  }
  Widget _buildPopupDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      titlePadding: EdgeInsets.zero
       ,
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
