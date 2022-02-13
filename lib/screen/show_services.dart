import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:saloon/screen/service_details.dart';

class ShowService extends StatefulWidget {
  const ShowService({Key? key}) : super(key: key);

  @override
  _ShowServiceState createState() => _ShowServiceState();
}

class _ShowServiceState extends State<ShowService> {
  late List<CardData> _cardList;
  late String address = '10 Hanover Square, Manhattan, NY';

  @override
  void initState() {
    _cardList = getCardData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
                  child: Image.asset(
                    'assets/myImages/priv_logo.png',
                    height: 45,
                    width: 80,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Icon(Icons.map_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(address,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300, fontSize: 17)),
                    )
                  ],
                ),
              ],
            ),
            Divider(color: Colors.grey.shade700),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: Text(
                  'SELECT YOUR SERVICE',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Add as many services as you like! Go ahead, treat yourself. You've earned it!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 7, right: size.width / 7, top: 40),
              child: ResponsiveGridRow(
                children: [
                  for (int i = 0; i < _cardList.length; i++)
                    ResponsiveGridCol(
                      xl: 3,
                      lg: 3,
                      md: 4,
                      sm: 6,
                      xs: 6,
                      child: GenerateCards(
                        imageName: _cardList[i].imageAdd.toString(),
                        cateNo: _cardList[i].cateNo,
                      ),
                    ),
                ],
              ),
            )
          ],
        ));
  }

  List<CardData> getCardData() {
    final List<CardData> cardDataList = [
      CardData(0,'Ear_piercing.jpg'),
      CardData(1,'facial.png'),
      CardData(2,'fitness.jpg'),
      CardData(3,'hair.jpg'),
      CardData(4,'makeup.jpg'),
      CardData(5,'massage.jpg'),
      CardData(6,"mensg.jpg"),
      CardData(7,'nails.jpg'),
      CardData(8,'tan.png'),
      CardData(9,'Weddings.jpg')
    ];
    return cardDataList;
  }
}

class GenerateCards extends StatefulWidget {
  final String imageName;
  final int cateNo;

  const GenerateCards({Key? key,required this.cateNo, required this.imageName}) : super(key: key);

  @override
  _GenerateCardsState createState() => _GenerateCardsState();
}

class _GenerateCardsState extends State<GenerateCards> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowServiceDetails(cateNo: widget.cateNo)));
      },
      onHover: (hovering) {
        setState(() => isHovering = hovering);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn,
          padding: EdgeInsets.all(isHovering ? 7 : 11),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Card(
            child: Image.asset(
              'assets/myImages/' + widget.imageName,
              fit: BoxFit.fill,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          )),
    );
  }
}

class CardData {
  CardData(this.cateNo,this.imageAdd);
  final int cateNo;
  final String imageAdd;
}
