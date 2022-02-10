// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/constants.dart';
// import 'package:erp_main_project/provider/user_data_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
//
// import 'custom_alert.dart';
//
// Set selecteditem = {};
// List pages = [
//   'Profile',
//   'Student View Routine',
//   'Student View Attendance',
//   'Student View Assignment',
//   'Student View Homework',
//   'Student View Notice',
//   'Student View Examination',
//   'Student View Results',
//   'Library',
//   'Staff View Routine',
//   'Staff View Attendance',
//   'Add Student Timetable',
//   'Mark Student Attendance Faculty',
//   'Marked Attendance History Faculty',
//   'Attendance Report Faculty',
//   'Mark Staff Attendance',
//   'Upload Documents',
//   'Upload Homework Faculty',
//   'Upload Assignment Faculty',
//   'Upload Notice Faculty',
//   'Add Examination Faculty',
//   'Add Results Faculty',
//   'Homework History Faculty',
//   'Assignment Hisotry Faculty',
//   'Notice History Faculty',
//   'Student Attendance Report',
//   'Staff Attendance Report',
//   'Map Faculty Subjects',
//   'Enquiry',
//   'Track Enquiry',
//   'Enquiry List',
//   'Pre Admission',
//   'Pre Admission List',
//   'Admission Form',
//   'Admission List',
//   'Staff Registration',
//   'Add Fee',
//   'Fee Collection',
//   'Fee Status',
//   'Generate Certificates',
//   'Raise Complaint',
//   'Settings',
//   'Send Notification',
//   'Change Password',
//   'Logout',
// ];
//
// class AssignPermissionForm extends StatefulWidget {
//   final String roleName;
//   final Set selectedRoles;
//   const AssignPermissionForm({
//     required this.roleName,
//     required this.selectedRoles,
//   });
//   @override
//   _AssignPermissionFormState createState() => _AssignPermissionFormState();
// }
//
// class _AssignPermissionFormState extends State<AssignPermissionForm> {
//   TextStyle gridviewtext = new TextStyle(fontSize: 16);
//   TextEditingController role = new TextEditingController();
//   @override
//   void initState() {
//     selecteditem = widget.selectedRoles;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
//     return Stack(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(16),
//           child: Center(
//             child: Card(
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(25),
//                 ),
//               ),
//               child: AnimatedContainer(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 duration: Duration(milliseconds: 200),
//                 height: size.height * 0.9,
//                 width: 1400,
//                 child: Center(
//                     child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 20, right: 40, top: 20),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.arrow_back,
//                                 color: kPrimaryColor,
//                               ),
//                               Text(" Back ",
//                                   style: TextStyle(color: kPrimaryColor)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                         child: Text(" Assign Permission ",
//                             style:
//                                 TextStyle(fontSize: 20, color: kPrimaryColor)),
//                       ),
//                     ]),
//                     Expanded(
//                         child: ListView(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(20),
//                           child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(7),
//                               ),
//                               width: MediaQuery.of(context).size.width,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(7),
//                                     ),
//                                     padding: (displayMobileLayout == true)
//                                         ? EdgeInsets.only(
//                                             left: 10, right: 10, bottom: 15)
//                                         : (MediaQuery.of(context).size.width <
//                                                 1024)
//                                             ? EdgeInsets.only(
//                                                 left: 15, right: 25, bottom: 20)
//                                             : EdgeInsets.only(
//                                                 left: 15,
//                                                 right: 30,
//                                                 bottom: 25),
//                                     width: MediaQuery.of(context).size.width,
//                                     child: Card(
//                                       color: Color(0xfff8f9fa),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       elevation: 5,
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20),
//                                         child: GridView.count(
//                                           childAspectRatio:
//                                               MediaQuery.of(context)
//                                                           .size
//                                                           .width >
//                                                       1024
//                                                   ? (1 / 0.11)
//                                                   : MediaQuery.of(context)
//                                                               .size
//                                                               .width >
//                                                           640
//                                                       ? (1 / 0.11)
//                                                       : (1 / 0.12),
//                                           crossAxisCount:
//                                               (displayMobileLayout == true)
//                                                   ? 1
//                                                   : (MediaQuery.of(context)
//                                                               .size
//                                                               .width <
//                                                           1050)
//                                                       ? 2
//                                                       : 2,
//                                           mainAxisSpacing: 15,
//                                           crossAxisSpacing: 18,
//                                           shrinkWrap: true,
//                                           physics: BouncingScrollPhysics(),
//                                           children: [
//                                             for (int i = 0;
//                                                 i < pages.length;
//                                                 i++)
//                                               PermissionCard(
//                                                 permissionName: pages[i],
//                                               ),
//                                             Center(
//                                                 child: FlatButton(
//                                                     height: 50,
//                                                     minWidth: 180,
//                                                     shape:
//                                                         RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         18.0)),
//                                                     color: kPrimaryColor,
//                                                     onPressed: () async {
//                                                       Provider.of<UserData>(
//                                                               context,
//                                                               listen: false)
//                                                           .setIsLoading(true);
//                                                       try {
//                                                         await FirebaseFirestore
//                                                             .instance
//                                                             .collection('Roles')
//                                                             .doc(
//                                                                 widget.roleName)
//                                                             .update(
//                                                           {
//                                                             'pages':
//                                                                 selecteditem
//                                                           },
//                                                         );
//                                                         await FirebaseFirestore
//                                                             .instance
//                                                             .collection(
//                                                                 '2021-2022')
//                                                             .doc('2021-2022')
//                                                             .collection('Users')
//                                                             .where('role',
//                                                                 isEqualTo: widget
//                                                                     .roleName)
//                                                             .get()
//                                                             .then(
//                                                           (value) async {
//                                                             if (value.docs
//                                                                     .length >
//                                                                 0) {
//                                                               for (int i = 0;
//                                                                   i <
//                                                                       value.docs
//                                                                           .length;
//                                                                   i++) {
//                                                                 print(value
//                                                                     .docs[i]
//                                                                     .data()[
//                                                                         'userId']
//                                                                     .toString());
//                                                                 await FirebaseFirestore
//                                                                     .instance
//                                                                     .collection(
//                                                                         '2021-2022')
//                                                                     .doc(
//                                                                         '2021-2022')
//                                                                     .collection(
//                                                                         'Users')
//                                                                     .doc(value
//                                                                         .docs[i]
//                                                                         .data()[
//                                                                             'userId']
//                                                                         .toString())
//                                                                     .update(
//                                                                   {
//                                                                     'pages':
//                                                                         selecteditem
//                                                                   },
//                                                                 );
//                                                               }
//                                                             }
//                                                             Provider.of<UserData>(
//                                                                     context,
//                                                                     listen:
//                                                                         false)
//                                                                 .setIsLoading(
//                                                                     false);
//                                                             MyAlert().showAlert(
//                                                                 context:
//                                                                     context,
//                                                                 type: AlertType
//                                                                     .success,
//                                                                 title: '',
//                                                                 desc:
//                                                                     'Permissions Updated Sucessfully',
//                                                                 button: [
//                                                                   DialogButton(
//                                                                     color:
//                                                                         kPrimaryColor,
//                                                                     child: Text(
//                                                                       "CLOSE",
//                                                                       style: TextStyle(
//                                                                           color: Colors
//                                                                               .white,
//                                                                           fontSize:
//                                                                               20),
//                                                                     ),
//                                                                     onPressed:
//                                                                         () {
//                                                                       Navigator.pop(
//                                                                           context);
//                                                                       Navigator.pop(
//                                                                           context);
//                                                                     },
//                                                                     width: 120,
//                                                                   ),
//                                                                 ]);
//                                                           },
//                                                         );
//                                                       } catch (e) {
//                                                         Fluttertoast.showToast(
//                                                           timeInSecForIosWeb: 3,
//                                                           webBgColor:
//                                                               "linear-gradient(to right, #376997, #376997)",
//                                                           msg: e.toString(),
//                                                           backgroundColor:
//                                                               kPrimaryColor,
//                                                           textColor:
//                                                               Colors.white,
//                                                         );
//                                                         Provider.of<UserData>(
//                                                                 context,
//                                                                 listen: false)
//                                                             .setIsLoading(
//                                                                 false);
//                                                       }
//                                                     },
//                                                     child: Text(
//                                                       "Save Permission",
//                                                       style: TextStyle(
//                                                           fontSize: 17,
//                                                           color: Colors.white),
//                                                     )))
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                       ],
//                     ))
//                   ],
//                 )),
//               ),
//             ),
//           ),
//         ),
//         Provider.of<UserData>(context, listen: true).isLoading
//             ? Container(
//                 color: Colors.grey[100]!.withOpacity(0.2),
//                 child: Center(
//                   child: CircularProgressIndicator(
//                     color: kPrimaryColor,
//                   ),
//                 ),
//               )
//             : Container()
//       ],
//     );
//   }
// }
//
// class PermissionCard extends StatefulWidget {
//   final String permissionName;
//   PermissionCard({required this.permissionName});
//
//   @override
//   _PermissionCardState createState() => _PermissionCardState();
// }
//
// bool checkBox = false;
//
// class _PermissionCardState extends State<PermissionCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: kPrimaryColor,
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Checkbox(
//                   activeColor: Colors.white,
//                   checkColor: kPrimaryColor,
//                   value: checkBox =
//                       selecteditem.contains(widget.permissionName),
//                   onChanged: (bool? val) {
//                     setState(() {
//                       checkBox = val!;
//                       if (checkBox)
//                         selecteditem.add(widget.permissionName);
//                       else
//                         selecteditem.remove(widget.permissionName);
//                     });
//                   },
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   widget.permissionName,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
