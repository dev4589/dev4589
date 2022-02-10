import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class dateAndTime extends StatefulWidget {
  const dateAndTime({Key? key}) : super(key: key);

  @override
  _dateAndTimeState createState() => _dateAndTimeState();
}

class _dateAndTimeState extends State<dateAndTime> {
  final CalendarController _selectedDateController = CalendarController();

  @override
  initState() {
    _selectedDateController.selectedDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size  size=MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0, top: 20, left: 8.0, right: 8.0),
            child:ListView(children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo_dark.png",
                  ),
                ],
              ),
              const Divider(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                  child: Text(
                    "SET APPOINTMENT DATE & TIME",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  xl: 7,
                  lg: 7,
                  md: 7,

                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:size.width/15,vertical: 50),
                    child: SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: SfCalendar(
                          controller: _selectedDateController,
                          headerStyle: const CalendarHeaderStyle(
                              textAlign: TextAlign.center,
                              textStyle: TextStyle(
                                  fontFamily: 'Roboto', letterSpacing: 2.5)),
                          view: CalendarView.month,
                          showDatePickerButton: true,
                          minDate: DateTime.now(),
                          monthViewSettings: const MonthViewSettings(
                              showTrailingAndLeadingDates: false,
                              dayFormat: 'EEE'),
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xl:4,
                  lg: 4,
                  md: 4,
                  child: SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width/3,

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right:30,top: 50,bottom: 10),
                          child: Text("SELECT A TIME",style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              letterSpacing: 1.5)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                          child: SizedBox(
                            height: 300,
                            width: 300,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(border: Border.all()),
                              child: ListView(
                                children: [
                                  for(int i=0;i<10;i++)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(border: Border.all()),


                                      child: ListTile(title: const Text("9:00 AM"),
                                        trailing: Text("4 pros online"),
                                        onTap: (){},
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),

                          ),
                        )

                      ],
                    ),
                  ),
                ),

              ],

              ),



            ])));
  }
}
