import 'package:flutter/material.dart';
import 'package:saran_ott/pages/editprofile.dart';
import 'package:saran_ott/widgets/model.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bg,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.height*0.1,
                      backgroundImage: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAk1BMVEX///8AESEAAADCxsj///3+/f8ADh8AABX8/PwAABMAEiAAAAsAABEAAA4DFCMAAAjY2t309fYABhsAABjp6uydoKRCRUoAABu1uLx1en7JzM5rcHONj5OqrbG+wMCWmZ5LTlMqLTUJDxZiZWwVGSUPEyNaXmI3OUEXGh8tMjY3OTve4uGChIdrbnceIStUVloADSTxrA1xAAAEKUlEQVR4nO2a7XaiMBBAkzHE8CGQABZR61eVdnHXvv/TbaJ2i2dVaA1h95zcX+0fvSczzEwGEbJYLBaLxWKxWCwWi8VisVgs+iGEfP7Zp8gFjMeDwaCoOEPI6VvmxGCxFHBku8uKnmWYwwjiWbn1XYqxhzGmweh1mXNEHNRbGGUC5SUk0qjGCA4FIqyvKDKUTv0hDi+lQhysZ5z0IqXCUy0BX4PCJkV9RJAREr8FV50k0SElPRyWg9LyphMOYcf7SHW+G+HQuyHleTDpQ2pxPZ/+AM/mneJXcV9K/EiNS01G950w9jOzRg6qAN/KpzMhjbjJRihTeNaQUcoKcrPdmY9F2CRF3Y3ZblNsaZPTMdWNloW53+yE6bAw2GoI2jenlGQ0N6akmN7uMDX8mVGpg9tGKtoblVoOW0lNjErt2kmZPamfURspwzk1ayeVGywJDsrblAS6NVmnHBT/alPRx2YrOj8kjU7haMJMShGUNcbPw2D2tixvfEAb5iks3ow6KRqfP+qa7XyKdNUwowcHblxKVoW7D6AY9bB/IWh6J9dDCpnMPNM4iG1uppV88vaEmJeS03d6Y7+hNhw/GXHMSx3FJiqvvHpt8NR/T+6ix9Uny8DHuH4DlJLvIItBP/sphUNQOg2AhheRe91zRIw2mDrH02DFBGCUCEGpEEOAl1msKn5/O88z/HmyG5erVTne7IseKuY11EPG0yquqpT/G9t9ghzFn//VFvsUuj4yXX45y/eV8qonNWOqZlb7vJ+nL822EMGkuHzz4ZxSP4JtZn5nhuZjcEP87tPd5ben2Y76FIcCxgZHFxkgggYlPJ3rkiwDwXQ2fx4MnuezqQswPE8PCZQDGVtmpNswwhfri2s7DSJXVqrEjYL62ip01wtupi3LRjyGd++zt3in9ued22Ct53gUxmn3j6GMBsrfGnewnwQ/Bqjr8q6cIGncLNZCOAR5Te46hFnSvO28QAznXc6gMggsb75aXUDVZDzvcJCRlXvutriu/yUmz6qzw2IoBvGlczojIO4u16tS4K8l1IfVuOpC6liXl622UteIluojtIeQIdb0Mu0esNAtdJKK/W8k+Qc0ivXnOiHO8guF/G9GS6eDobTVRvEOsrJrJy0btixNJKXuqY+hDL5VDD4JQfObUqbWUd8pmzU8sUp1dmb5UfMHM+r4+lZvtyH8MHwwepiGyUHvDyji+2u7llpaWyBBk4ejpwCtb7V4+aRD6qnUWdSLtYboyfitdS5ns2+PB5dEGksVa/fKuJlgqi9+fCX0hE+s9K2vYv/Bav6B58fapHLw9JyUp3FUyPRJ6ct0KaXDSYZPo1ShT0pfoeIbeHDCOyFgo3F5zPcvoIGXvUYnOfEff9v9GEXMdS60de0I5ef8A1t2i8VisVgsFovFYrFYLBaL5T/kNwtEOygqw6y1AAAAAElFTkSuQmCC"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Saran 007",
                  style: subheading,
                  ),
                  SizedBox(height: 5),
                  Text("+91 978*****01",
                  style: TextStyle(color: Colors.white60,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>editprofile()));
                      },
                      child: Text("Edit Profile",
                        style: category,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Downloads",
                      style: category,
                    ),
                  ),
                  Divider(
                    height: 60,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Rate us",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Share to friends",
                      style: category,
                    ),
                  ),
                  Divider(
                    height: 60,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Our Website",
                        style: category,
                      ),
                      Text("vidy.in",
                        style: TextStyle(
                            fontSize: 16,color: Colors.white60
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Twitter",
                        style: category,
                      ),
                      Text("@vidy",
                        style: TextStyle(
                            fontSize: 16,color: Colors.white60
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Facebook",
                        style: category,
                      ),
                      Text("vidy.facebook",
                        style: TextStyle(
                            fontSize: 16,color: Colors.white60
                        ),
                      )
                    ],
                  ),
                  Divider(
                    height: 60,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Contact us",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Privacy & policy",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Terms & Conditions",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Report an issue",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("About us",
                      style: category,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Logout",
                      style: category,
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
