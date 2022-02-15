import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class DetailsCard extends StatefulWidget {
  final String subCateTitle;
  const DetailsCard({Key? key, required this.subCateTitle}) : super(key: key);

  @override
  _DetailsCardState createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  late List<bool> isHover;
  late bool submitHover = false;

  @override
  void initState() {
    // TODO: implement initState
    isHover = List<bool>.generate(serviceData.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveGridCol(
            xl: 12,
            md: 12,
            xs: 12,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                widget.subCateTitle,
                style: GoogleFonts.roboto(
                    letterSpacing: 2,
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
            ),
          ),
          for (int i = 0; i < serviceData.length; i++)
            ResponsiveGridCol(
                xl: 4,
                lg: 4,
                md: 4,
                sm: 6,
                xs: 12,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    hoverColor: Colors.white,
                    onTap: () {
                      showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    },
                    onHover: (hovering) {
                      setState(() => isHover[i] = hovering);
                    },
                    child: SizedBox(
                      height: 250,
                      width: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.ease,
                          padding: EdgeInsets.all(isHover[i] ? 9 : 7),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      isHover[i] ? Colors.black : Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  serviceData[i].cardTitle,
                                  style: GoogleFonts.roboto(
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                  textAlign: TextAlign.start,
                                ),
                                Spacer(),
                                Text(serviceData[i].cardText,
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
                                    Text(
                                      '\$' + serviceData[i].price.toString(),
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                    Spacer(),
                                    TextButton(
                                        onHover: (value) {
                                          submitHover = value;
                                        },
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.resolveWith(
                                                    (states) => states.contains(
                                                            MaterialState
                                                                .hovered)
                                                        ? Colors.white
                                                        : Colors.black),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        states.contains(
                                                                MaterialState
                                                                    .hovered)
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
            child: SizedBox(
              width: 150,
              child: Text(
                "Your appointment will start with a consultation. Next, primer, foundation, concealer, powder, bronzer, blush, eyeliner, eye-shadow, mascara, and lipstick/gloss will be applied. PRIV a natural day look, distinguished lip or a smokey eye! Please note, false lashes not included.",

                style: TextStyle(fontFamily: 'roboto', color: Colors.grey),
                textAlign: TextAlign.left,
                // softWrap: true,
              ),
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

  List<servicePrice> serviceData = [
    servicePrice(
        'STAINLESS STEEL 3MM CUBIC ZIRCONIA',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        75),
    servicePrice(
        'GOLD PLATED 3MM BALL',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        100),
    servicePrice(
        '14K WHITE GOLD & DIAMOND',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        125),
    servicePrice(
        'STAINLESS STEEL 3MM CUBIC ZIRCONIA',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        75),
    servicePrice(
        'GOLD PLATED 3MM BALL',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        100),
    servicePrice(
        '14K WHITE GOLD & DIAMOND',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        125),
    servicePrice(
        'STAINLESS STEEL 3MM CUBIC ZIRCONIA',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        75),
    servicePrice(
        'GOLD PLATED 3MM BALL',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        100),
    servicePrice(
        '14K WHITE GOLD & DIAMOND',
        'Includes 2 piercing earrings. Your appointment will start with a consultation and instructions to care for your newly pierced ears. Next, your professional will cleanse your ears, mark the ears with your desired placement and proceed with piercing your ears. Aftercare product will be provided to you as well as the aftercare instructions to ensure a healthy healing. PRIV it and you will walk away with a stylish new look!',
        125),
  ];
}

class servicePrice {
  servicePrice(this.cardTitle, this.cardText, this.price);

  final String cardTitle;
  final String cardText;
  final int price;
}
