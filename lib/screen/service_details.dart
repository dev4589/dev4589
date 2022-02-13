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
  late List<Tab> myTabNo;
  var radius = const Radius.circular(125);
  late TabController _tabController;
  late List<CateData> _cateList;

  @override
  void initState() {
    // TODO: implement initState
    _cateList = getCateData();
    myTabNo = _cateList[widget.cateNo]
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
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 0,
            xs: 0,
            md: 0,
            lg: 0,
            sm: 0,
            child: Stack(children: [
              Container(
                width: size.width * (size.width <= 1200 ? 0 : .20),
                height: size.height,
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/myImages/' + _cateList[index].cateImage,
                  height: size.height,
                  fit: BoxFit.fill,
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
                            padding: const EdgeInsets.only(top: 20.0),
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
                        tabs: myTabNo,
                        indicator: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(radius)),
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width*0.10),
                    child: SizedBox(
                      width: size.width / 2,
                      height: size.height * .70,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          for (int i = 0; i < myTabNo.length; i++)
                            ListView(children: [DetailsCard()]),
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

// ListView(
// children: [Center(
// child: SizedBox(
// width: size.width / 2,
// height: size.height,
// child: TabBarView(
// controller: _tabController,
// children: [
// for (int i = 0; i < myTabNo.length; i++)
// DetailsCard(),
// ],
// ),
// ),
// ),]
// ),

// TabBar(
// padding: const EdgeInsets.all(12),
// isScrollable: true,
// unselectedLabelColor: Colors.grey.shade500,
// labelColor: Colors.white,
// controller: _tabController,
// tabs: myTabNo,
// indicator: ShapeDecoration(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(radius)),
// color: Colors.black87),
// ),

// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Center(
// child: Text(
// _cateList[index].cateName.toUpperCase() +
// ' services'.toUpperCase(),
// style: GoogleFonts.roboto(
// letterSpacing: 2,
// fontWeight: FontWeight.w700,
// fontSize: 30),
// )),
// ),

// Center(
// child: Text(
// 'Add as many services as you\'d like.',
// style: GoogleFonts.roboto(
// fontWeight: FontWeight.w300, fontSize: 12),
// )),

// IconButton(
// onPressed: () {
// Navigator.pop(context);
// },
// hoverColor: Colors.white,
// icon: const Icon(
// Icons.arrow_back_ios_outlined,
// size: 40,
// ),
// ),

// Container(
// width: size.width*(size.width <= 1200 ? 0 : .25),
// height: size.height,
// alignment: Alignment.centerLeft,
// child: Image.asset(
// 'assets/myImages/' + _cateList[index].cateImage,
// height: size.height,
// ),
// ),]
