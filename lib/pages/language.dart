import 'package:flutter/material.dart';

import '../widgets/model.dart';
import 'home.dart';
class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {




  bool english = false;
  bool tamil = false;
  bool hindi = false;
  bool kanada = false;
  bool telugu = false;
  bool malayalam = false;
  bool marathi = false;
  bool isDarkMode = true;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              color: bg,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Select Your Language:",
                        style: pageheading
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            english = !english;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: english? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: english? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Text(" ",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("English",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            tamil = !tamil;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: tamil? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: tamil? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("தமிழ்",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Tamil",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            hindi = !hindi;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: hindi? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: hindi? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("हिंदी",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Hindi",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            telugu = !telugu;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: telugu? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: telugu? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("తెలుగు",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Telugu",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            kanada = !kanada;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: kanada? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: kanada? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("ನಿನ್ನ ಬಳಿ",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Kanada",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            malayalam = !malayalam;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: malayalam? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: malayalam? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("മലയാളം",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Malayalam",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            marathi = !marathi;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: marathi? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Change color based on selection
                            border: Border.all(
                              color: marathi? Colors.blue : Color(0xffF4F4F6).withOpacity(0.5), // Add border when selected
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text("मराठी",
                                    style: subheading
                                ),
                              ),
                              Center(
                                child: Text("Marathi",
                                    style: subheading
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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



