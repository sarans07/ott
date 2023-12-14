import 'package:flutter/material.dart';
import 'package:saran_ott/pages/home.dart';
class splashscreen extends StatefulWidget {
  final Widget? child;
  const splashscreen({super.key, this.child});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  void initState(){
    Future.delayed(
        Duration(seconds: 5),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget.child!), (route) => false);

    }
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        child: Image.asset(
          "assets/gif/vidy.gif",
          // height: MediaQuery.of(context).size.height/1,
          // width: MediaQuery.of(context).size.width/1,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
