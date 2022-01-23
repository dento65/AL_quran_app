// was used to test screens
// import 'package:al_quran_iust/data/data3.dart';
// import 'package:flutter/material.dart';
// import 'package:al_quran_iust/data/data.dart';
// import 'package:al_quran_iust/constants.dart';
// import 'package:al_quran_iust/services/fetch_data.dart';
// import 'package:settings_ui/settings_ui.dart';
//
// class Setting extends StatefulWidget {
//   @override
//   _Setting createState() =>_Setting();
// }
//
// class _Setting extends State<Setting> {
//   dynamic localDatArabic;
//   var fontSizeV=7.0;
//   var ds = 100.0;
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//               leading: IconButton(
//                 icon: Icon(Icons.arrow_back_ios),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//
//               ),
//               title: Text('Settings'),
//             ),
//             body: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 GestureDetector(
//                   child: Container(
//                     color: Colors.red,
//                     child:Text(
//                         'afsd'
//                     ),
//
//                   ),
//                   onTap: ()
//                   {
//
//                   },
//                 ),
//
//                 Slider(
//                   value: fontSizeV,
//                   onChanged: (ds) {
//                     setState(() {
//                       fontSizeV = ds;
//                     });
//
//                   },
//                   max: 100,
//                   label: "dgfs",
//                   divisions: 5,
//                 )
//               ],
//             )
//
//         ),
//       ),
//     );
//
//   }
// }
