import 'package:flutter/material.dart';
import 'package:saran_ott/pages/home.dart';

import '../widgets/model.dart';
class languages extends StatefulWidget {
  const languages({super.key});

  @override
  State<languages> createState() => _languagesState();
}

class _languagesState extends State<languages> {

   int? selectedindex;
   bool isDarkMode = true;

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                color: bg,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Select Your Language:",
                          style: pageheading
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: MediaQuery.of(context).size.height*0.7,
                      width: MediaQuery.of(context).size.width*1,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.6,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 10.0,
                          ),
                          itemCount: lis.length,
                          itemBuilder: (context, index){
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  print("now selected ===>>> $index");
                                  selectedindex = index;
                                  var showButton = true;
                                });
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.1,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    color: selectedindex == index
                                        ? Colors.blue
                                        : Color(0xffF4F4F6).withOpacity(0.5),
                                    border: Border.all(color: selectedindex == index
                                        ? Color(0xffDEB988)
                                        : Colors.transparent,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(50),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Center(
                                      child: Text(lis[index].text,
                                        style: subheading
                                      ),
                                    ),
                                    Center(
                                      child: Text(lis[index].text1,
                                        style: subheading
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("Continue",
                          style: pageheading,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
