import 'package:flutter/material.dart';
import 'package:saran_ott/pages/video%20player.dart';
import 'package:saran_ott/widgets/model.dart';
class videodiscription extends StatefulWidget {
  const videodiscription({super.key});

  @override
  State<videodiscription> createState() => _videodiscriptionState();
}

class _videodiscriptionState extends State<videodiscription> {

  bool readMore = false;
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
              color: bg,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text("Animals in VIDY",
                  style: vidy,
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.4,
                        width: MediaQuery.of(context).size.width*1,                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage("data:image/jpeg;base64,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"),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 20,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>videoplayer()));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.play_arrow,
                              size: 30,color: Colors.blue,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ExpansionTile(
                    title: Text("Animals in Forest",
                  style: subheading,
                    ),
                    children: [
                      Text("                10:35 Big Buck Bunny (2008). 10 minutes, 35 seconds. The plot follows a day in the life of Big Buck Bunny, during which time he meets three bullying rodents: the leader, Frank the flying squirrel, and his sidekicks Rinky the red squirrel and Gimera the chinchilla."
                          "10:35 Big Buck Bunny (2008). 10 minutes, 35 seconds. The plot follows a day in the life of Big Buck Bunny, during which time he meets three bullying rodents: the leader, Frank the flying squirrel, and his sidekicks Rinky the red squirrel and Gimera the chinchilla.",
                      style: category,
                        textAlign: TextAlign.center,
                        maxLines: readMore ? 20 : 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            readMore = !readMore;
                          });
                        },
                        child: Text(readMore ? "Read less" : "Read more"),
                      ),
                  ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Icon(Icons.add,size: 30,color: Colors.white,),
                          SizedBox(height: 10),
                          Text("Watchlist",
                          style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Icon(Icons.share,size: 30,color: Colors.white,),
                          SizedBox(height: 10),
                          Text("Share",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Icon(Icons.download,size: 30,color: Colors.white,),
                          SizedBox(height: 10),
                          Text("Download",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Related Videos",
                    style: subheading,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height*0.23,
                    width: MediaQuery.of(context).size.width*1,                   child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.23,
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
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("You may Like",
                      style: subheading,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height*0.23,
                    width: MediaQuery.of(context).size.width*1,                   child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext con,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.23,
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
