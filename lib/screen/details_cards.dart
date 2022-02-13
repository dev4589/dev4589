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
}
