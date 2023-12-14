import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saran_ott/pages/search.dart';
import 'package:saran_ott/pages/settings.dart';
import 'package:saran_ott/pages/video%20discription.dart';

import '../widgets/model.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int currentIndex = 0;

 final List<String> items =[

   "data:image/jpeg;base64,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",
   "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_2_5x/sources/r1/cms/prod/1385/591385-h",
   "https://i.pinimg.com/736x/34/d0/1f/34d01f7160e26d6265cef982983460a0.jpg",
   "https://img.mensxp.com/media/content/2021/Dec/Header-cricket_61aa1baf77a73.jpeg",
   "https://m.media-amazon.com/images/I/61RQ-3o2n2L._AC_UF1000,1000_QL80_.jpg",
 ];

  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              //color: bg
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("VIDY",
                        style: vidy
                        ),
                      ),
                      Container(child: Row(
                        children: [
                          Switch(
                            value: isDarkMode,
                            onChanged: (value) {
                              setState(() {
                                isDarkMode = value;
                              });
                            },
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));

                              },
                              child: Icon(Icons.search,size: 30,)),
                          SizedBox(width: 10),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));
                              },
                              child: Icon(Icons.settings_outlined,size: 30,)),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Top Trending🔥",
                    style: subheading,
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      CarouselSlider.builder(
                      itemCount: items.length,
                      options: CarouselOptions(
                          scrollDirection: Axis.horizontal,
                          height: 350,
                          autoPlay: true,
                          viewportFraction:1,
                          onPageChanged: (index,reason){
                            setState(() {
                              currentIndex = index;
                            });
                          }
                      ),

                      itemBuilder: (BuildContext context, int index, int pageViewIndex){
                        return Container(
                          height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width*1,                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(items[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>videodiscription()));
                            },
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.play_arrow,color: Colors.blue,size: 30,)),
                          ))
                    ]
                  ),
                  SizedBox(height: 10),
                  DotsIndicator(
                    dotsCount: items.length,
                    position: currentIndex.toInt(),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Continue to watching",
                        style: subheading,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: Offset(
                                      5.0,
                                      5.0
                                  ),
                                )
                              ],
                              image: DecorationImage(
                                image: NetworkImage("https://m.media-amazon.com/images/M/MV5BOTc2ZTlmYmItMDBhYS00YmMzLWI4ZjAtMTI5YTBjOTFiMGEwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg"),
                                fit: BoxFit.fill,
                              ),),
                          ),
                        );

                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Live shows",
                          style: subheading,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.25,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(
                                          5.0,
                                          5.0
                                      ),
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Muralitharan_bowling_to_Adam_Gilchrist.jpg/499px-Muralitharan_bowling_to_Adam_Gilchrist.jpg"),
                                    fit: BoxFit.fill,
                                  ),),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                      color: Colors.black45
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.adjust_rounded,color: Colors.red,),
                                      Text("Live",
                                      style: category,
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Popular Shows",
                          style: subheading,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: Offset(
                                      5.0,
                                      5.0
                                  ),
                                )
                              ],
                              image: DecorationImage(
                                image: NetworkImage("data:image/jpeg;base64,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"),
                                fit: BoxFit.fill,
                              ),),
                          ),
                        );

                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Ind's Top Performance vs Aus",
                          style: subheading,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: Offset(
                                      5.0,
                                      5.0
                                  ),
                                )
                              ],
                              image: DecorationImage(
                                image: NetworkImage("data:image/jpeg;base64,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"),
                                fit: BoxFit.fill,
                              ),),
                          ),
                        );

                      },
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
