import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../widgets/model.dart';
class movies extends StatefulWidget {
  const movies({super.key});

  @override
  State<movies> createState() => _moviesState();
}

class _moviesState extends State<movies> {

  int currentIndex = 0;

  final List<String> items =[

    "https://static.moviecrow.com/marquee/leo-review---celebration-of-violence/221852_thumb_665.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/685/842/desktop-wallpaper-20-creative-indian-movie-poster-designs-by-prathool-i-tamil-movie.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrDAahVgcqseVt95FkGkMQHZhFBFt-VRIggvahFjfWVDJOYWFjm83eDjR7IZqsnTn5iJg&usqp=CAU",
    "https://e1.pxfuel.com/desktop-wallpaper/411/820/desktop-wallpaper-tamil-movie-poster-backgrounds.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPYR5xHrnzHpJ81ITAmf3P-7iAxu05-D9Mgg&usqp=CAU",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: bg,
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
                        style: vidy,
                      ),
                    ),
                    Container(child: Row(
                      children: [
                        Icon(Icons.search,size: 30,color: Colors.yellow,),
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext con,index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white30
                          ),
                          child: Center(
                            child: Text("Bollywood",
                              style: category,
                            ),
                          ),
                        ),
                      );

                    },
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Hot Movies🔥",
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
                            width: MediaQuery.of(context).size.width*1,                             decoration: BoxDecoration(
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
                        left: 100,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.065,
                          width: MediaQuery.of(context).size.width*0.45,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.play_arrow,color: Colors.white,size: 30,),
                              Text("Watch Now",
                                style: subheading,
                              )
                            ],
                          ),
                        ),
                      )
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
                      child: Text("Trending Movies",
                        style: subheading,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,)
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
                              image: NetworkImage("https://www.kerala9.com/wp-content/uploads/2022/03/beast-tamil-movie-hd-poster-006-674x1024.jpg"),
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
                      child: Text("Tmail Movies",
                        style: subheading,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,)
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
                              image: NetworkImage("https://onlookersmedia.in/wp-content/uploads/2022/03/kamal-haasan-vikram-new-poster2.jpg"),
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
                      child: Text("Dubbed Movies",
                        style: subheading,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,)
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
                              image: NetworkImage("https://pbs.twimg.com/media/FUbFPQoUsAANIgK.jpg:large"),
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

    );
  }
}
