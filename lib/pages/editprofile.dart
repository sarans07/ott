import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saran_ott/screens/Profile.dart';

import '../widgets/model.dart';
class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {


  bool isDarkMode = true;


  Uint8List? _image;
  File? selectedIMage;
  //Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue    ,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text("Gallery",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text("Camera",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }



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
            decoration: BoxDecoration(color: bg),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                          radius: 60,
                          backgroundImage: MemoryImage(_image!))
                          : const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg"),
                      ),
                      Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                              onPressed: () {
                                showImagePickerOption(context);
                              },
                              icon:  Icon(Icons.add_a_photo,
                                color: Colors.grey.shade600,
                                size: 30,
                              )))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("Name :",
                        style: text,
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("Phone no :",
                          style: text,
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("E-mail :",
                          style: text,
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("D.O.B :",
                          style: text,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("Location :",
                          style: text,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Text("Password :",
                          style: text,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
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
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Save Changes",
                        style: subheading,
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
