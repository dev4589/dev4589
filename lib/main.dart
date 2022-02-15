import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:saloon/screen/homepage.dart';
import 'package:saloon/screen/show_services.dart';
import 'package:saloon/screen/signup_page.dart';

import 'screen/rough.dart';
import 'screen/service_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            // maxWidth: 1200,
            // minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.resize(2460, name: '4K'),
            ],
            background: Container(color: Colors.black)),
        title: 'Saloon',
        theme: ThemeData(
          primaryColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.secularOneTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: ShowServiceDetails(cateNo: 2),
    );
  }
}
