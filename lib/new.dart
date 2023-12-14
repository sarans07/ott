import 'package:flutter/material.dart';
// class ss extends StatefulWidget {
//   const ss({super.key});
//
//   @override
//   State<ss> createState() => _ssState();
// }
//
// class _ssState extends State<ss> {
//   bool a = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height*1,
//         width: MediaQuery.of(context).size.width*1,
//         color: Colors.black,
//         child: Column(
//           children: [
//             InkWell(
//               onTap: (){
//                 setState(() {
//                   a=!a;
//                 });
//               },
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.1,
//                 width: MediaQuery.of(context).size.width*0.4,
//                 decoration: BoxDecoration(
//                   color: a? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
//                   border: Border.all(
//                     color: a? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
//                     width: 2.0,
//                   ),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class ThemeChanger extends StatefulWidget {
  @override
  _ThemeChangerState createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theme Change'),
        ),
        body: Center(
          child: Switch(
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });
            },
          ),
        ),
      ),
    );
  }
}