import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'details_cards.dart';

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

  @override
  void initState() {
    // TODO: implement initState
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
                                DetailsCard(
                                  subCateTitle: myTabName[i].text.toString(),
                                )
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
}

class CateData {
  CateData(this.cateNo, this.cateName, this.cateImage, this.subCateList);

  final int cateNo;
  final String cateName;
  final String cateImage;
  final List subCateList;
}
