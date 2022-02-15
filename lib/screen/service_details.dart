import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';


class ShowServiceDetails extends StatefulWidget {
  final int cateNo;

  const ShowServiceDetails({required this.cateNo, Key? key}) : super(key: key);

  @override
  _ShowServiceDetailsState createState() => _ShowServiceDetailsState();
}

class _ShowServiceDetailsState extends State<ShowServiceDetails>
    with TickerProviderStateMixin {
  late List<Tab> myTabName;
  var radius = const Radius.circular(125);
  late TabController _tabController;
  late List<CateData> _cateList;
  var noOfService = "1 Service";
  var price = "75";
  late bool submitHover = false;
  late List<bool> isHover;
  // late bool submitHover = false;

  @override
  void initState() {
    // TODO: implement initState
    isHover = List<bool>.generate(serviceData.length, (index) => false);
    _cateList = getCateData();

    myTabName = _cateList[widget.cateNo]
        .subCateList
        .map((e) => Tab(
              text: e,
            ))
        .toList();

    _tabController = TabController(
        length: _cateList[widget.cateNo].subCateList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int index = widget.cateNo;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xl: 0,
              xs: 0,
              md: 0,
              lg: 0,
              sm: 0,
              child: Stack(children: [
                Container(
                  width: size.width * (size.width <= 1100 ? 0 : .20),
                  height: size.height,
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/myImages/' + _cateList[index].cateImage,
                    height: size.height,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ),
            ResponsiveGridCol(
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 100),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                hoverColor: Colors.white,
                                icon: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                _cateList[index].cateName.toUpperCase() +
                                    ' services'.toUpperCase(),
                                style: GoogleFonts.roboto(
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        'Add as many services as you\'d like.',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TabBar(
                          padding: const EdgeInsets.all(12),
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey.shade500,
                          labelColor: Colors.white,
                          controller: _tabController,
                          tabs: myTabName,
                          indicator: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(radius)),
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.10),
                      child: SizedBox(
                        width: size.width / 2,
                        height: size.height * .70,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            for (int i = 0; i < myTabName.length; i++)
                              ListView(children: [
                                ResponsiveGridRow(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ResponsiveGridCol(
                                        xl: 12,
                                        md: 12,
                                        xs: 12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            myTabName[i].text.toString(),
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
                                    ])
                              ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, bottom: 100),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black)),
              height: 120,
              width: 350,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      noOfService + " - " "\$" + price,
                      style: TextStyle(fontFamily: 'roboto'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "EDIT",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 59,
                    width: 350,
                    child: TextButton(
                        onPressed: () {},
                        onHover: (value) {
                          submitHover = value;
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0))),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) =>
                                    states.contains(MaterialState.hovered)
                                        ? Color.fromARGB(255, 145, 120, 150)
                                        : Colors.black)),
                        child: Text(
                          "GO TO CHECKOUT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'roboto',
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
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

  List<CateData> getCateData() {
    final List<CateData> cateDataList = [
      CateData(0, 'Ear Piercing', 'Web_Vertical_ear.png', ['EAR PIERCING']),
      CateData(1, 'Facials', 'Facial (1).png', ['FACIALS']),
      CateData(2, 'Fitness', 'Fitness_Vertical.png', ['WORKOUT']),
      CateData(
          3, 'Hair', 'Blowout.png', ['BLOWOUT', 'ELITE BLOWOUT', 'HAIRCUT']),
      CateData(5, 'Massage.jpg', 'Massage.png', ['MASSAGE']),
      CateData(6, "Men's Grooming", "MG_Vertical.png", ["MEN'S GROOMING"]),
      CateData(7, 'Nails', 'Nail_Vertical.png', ['NAILS']),
      CateData(8, 'Spray Tan', 'Spray+Tan.png', ['SPRAY TAN']),
      CateData(9, 'Bridal', 'Wedding.png', [
        'EXPERT BRIDAL MAKEUP',
        'EXPERT BRIDAL HAIR',
        'ELITE BRIDAL MAKEUP',
        'ELITE BRIDAL HAIR'
      ]),
      CateData(4, 'Makeup', 'Makeup.png', ['MAKEUP', 'ELITE MAKEUP']),
    ];
    return cateDataList;
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

class CateData {
  CateData(this.cateNo, this.cateName, this.cateImage, this.subCateList);

  final int cateNo;
  final String cateName;
  final String cateImage;
  final List subCateList;
}



class servicePrice {
  servicePrice(this.cardTitle, this.cardText, this.price);

  final String cardTitle;
  final String cardText;
  final int price;
}
