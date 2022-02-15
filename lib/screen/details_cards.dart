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
  late String subCateTitle = 'EAR PIERCING';
  late String cardTitle = 'STAINLESS STEEL 3MM CUBIC ZIRCONIA';
  late String cardText =
      'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!';
  late int price = 75;
  late bool submitHover = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveGridCol(
            xl: 12,
            md: 12,
            xs: 12,
            child: Text(
              subCateTitle,
              style: GoogleFonts.roboto(
                  letterSpacing: 2, fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ),
          for(int i=0;i<8;i++)
          ResponsiveGridCol(
              xl: 4,
              lg: 4,
              md: 4,
              sm: 6,
              xs: 12,
              child: InkWell(
                onTap: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
                onHover: (hovering) {
                  setState(() => isHover = hovering);
                },
                child: SizedBox(
                  height: 250,
                  width: 200,
                  child: Card(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHover ? 8 : 7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              cardTitle,
                              style: GoogleFonts.roboto(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                              textAlign: TextAlign.start,
                            ),
                            Spacer(),
                            Text(cardText,
                                style: GoogleFonts.roboto(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15),
                                maxLines: 3,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis),
                            Spacer(flex: 2),
                            Row(
                              children: [
                                // Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                                Text('\$' + price.toString()),
                                Spacer(),
                                TextButton(
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
                              ],
                            ),
                          ],
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
      titlePadding: EdgeInsets.zero,
      title: Image.asset(
        'assets/myImages/makeupwitheye.png',
        fit: BoxFit.contain,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      insetPadding: EdgeInsets.symmetric(
        vertical: size.height / 10,
        horizontal: size.width /
            (size.width <= 1200 ?
              (size.width <= 1000 ?
                (size.width <= 800 ?
                      (size.width <= 450 ? 4
                      : 3.5)
                    : 3)
                  : 2.8)
                : 2.6),
      ),
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
                  onPressed: () {

                  },
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
