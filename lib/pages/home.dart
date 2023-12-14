import 'package:flutter/material.dart';
import 'package:saran_ott/screens/HomePage.dart';
import 'package:saran_ott/screens/Profile.dart';
import 'package:saran_ott/screens/TvShows.dart';
import 'package:saran_ott/screens/movies.dart';

import '../screens/Sports.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int _selectedIndex =0;
  List pages =[
    homepage(),
    sports(),
    movies(),
    tvshows(),
    profile(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.white,),
              label: "Home",
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(icon: Icon(Icons.sports_cricket,color: Colors.white,),
              label: "Sports"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies_outlined,color: Colors.white,),
              label: "Movies"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.tv,color: Colors.white,),
              label: "Tv-Shows"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
