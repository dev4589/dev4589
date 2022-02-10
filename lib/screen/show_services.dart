import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ShowService extends StatefulWidget {
  const ShowService({Key? key}) : super(key: key);

  @override
  _ShowServiceState createState() => _ShowServiceState();
}

class _ShowServiceState extends State<ShowService> {
  late List<CardData> _cardList;
  late String address='10 Hanover Square, Manhattan, NY';

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    'assets/myImages/priv_logo.png',
                    height: 45,
                    width: 80,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: (size.width / 2) - 250),
                    child: Icon(Icons.map_outlined)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(address),
                )
              ],
            ),
            Divider(color: Colors.grey.shade700),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 15),
                child: Text(
                  'SELECT YOUR SERVICE',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),
            ),
            Center(
              child: Text(
                "Add as many services as you like! Go ahead, treat yourself. You've earned it!",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 7,right: size.width / 7,top: 40),
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
      CardData('Ear_piercing.jpg'),
      CardData('facial.png'),
      CardData('fitness.jpg'),
      CardData('hair.jpg'),
      CardData('makeup.jpg'),
      CardData('massage.jpg'),
      CardData('mensg.jpg'),
      CardData('nails.jpg'),
      CardData('tan.png'),
      CardData('Weddings.jpg')
    ];
    return cardDataList;
  }
}

class GenerateCards extends StatefulWidget {
  final String imageName;

  const GenerateCards({Key? key, required this.imageName}) : super(key: key);

  @override
  _GenerateCardsState createState() => _GenerateCardsState();
}

class _GenerateCardsState extends State<GenerateCards> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   child: InkWell(
    //     onTap: () => null,
    //     onHover: (value) {
    //       isHovering = value;
    //     },
    //     child: Image.asset(
    //       'assets/myImages/' + widget.imageName,
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    //   clipBehavior: Clip.antiAliasWithSaveLayer,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    // );
    return InkWell(
      onTap: () => null,
      onHover: (hovering) {
        setState(() => isHovering = hovering);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
          padding: EdgeInsets.all(isHovering ? 8 : 10),
          decoration: BoxDecoration(
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
  CardData(this.imageAdd);

  final String imageAdd;
}
