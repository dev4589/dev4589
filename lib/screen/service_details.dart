import 'package:flutter/material.dart';

class ShowServiceDetails extends StatefulWidget {
  const ShowServiceDetails({Key? key}) : super(key: key);

  @override
  _ShowServiceDetailsState createState() => _ShowServiceDetailsState();
}

class _ShowServiceDetailsState extends State<ShowServiceDetails> {
  late String service='Hair';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   width: size.width*(size.width<=1000?0:.25),
          //   height: size.height,
          //   child: Image.asset('assets/myImages/Web_Vertical_ear.png',height: size.height,width: 320,),
          //   alignment: Alignment.centerLeft,
          // ),
          Container(
            width: size.width*(size.width<=1000?0:.25),
            height: size.height,
            child: Image.asset('assets/myImages/Web_Vertical_ear.png',height: size.height,width: 320,),
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width*(size.width<=1000?0:.25),top: 40),
            child: Container(
              child: SizedBox(
                child: Stack(
                  children: [
                    Icon(Icons.arrow_back_ios_outlined,size: 40,),
                    Column(
                      children: [
                        Center(child: Text('$service services')),
                      ],
                    ),
                  ],
                )
              )
            ),
          )
        ],
      ),
    );
  }
}
