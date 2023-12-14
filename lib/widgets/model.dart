import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


class MyThemePreferences{
  static const uniqueKey = "uniqueKey";

  setTheme(bool value)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(uniqueKey, value);

  }
  getTheme()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(uniqueKey) ?? false;
  }
}


TextStyle pageheading = TextStyle(fontSize: 25,fontWeight: FontWeight.bold);
TextStyle subheading = TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
TextStyle category = TextStyle(fontSize: 18,);
TextStyle text = TextStyle(fontSize: 16,);
TextStyle vidy = TextStyle(
    fontSize: 30,color: Colors.yellow,fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
          offset: Offset(3.0, 3.0),
          blurRadius: 5.0,
          color: Colors.grey
      )
    ]
);

 Color bg = Colors.black;





class Model
{
  String? text;
  String? text1;


  Model(this.text,this.text1);
}

List lis = modelData.map((a) => Model(a["text"], a["text1"])).toList();

var modelData = [
  {"text":"","text1":"English"},
  {"text":"தமிழ்","text1":"Tamil"},
  {"text":"हिंदी","text1":"Hindi"},
  {"text":"తెలుగు","text1":"Telugu"},
  {"text":"ನಿನ್ನ ಬಳಿ","text1":"Kanada"},
  {"text":"മലയാളം","text1":"Malayalam"},
  {"text":"मराठी","text1":"Marathi"},
];