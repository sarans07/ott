import 'package:flutter/material.dart';
import 'package:saran_ott/widgets/model.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
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
            height: MediaQuery.of(context).size.height/1,
            width: MediaQuery.of(context).size.width/1,
            decoration: BoxDecoration(color: bg,),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.5,color: Colors.white10)
                  ),
                  child: TextField(
                    style: category,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white10,width: 1,),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.yellow, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white10, width: 1),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search,color: Colors.white,size: 30,),
                      ),
                      suffixIcon: Icon(Icons.mic,size: 30,color: Colors.white,)
                    ),
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
