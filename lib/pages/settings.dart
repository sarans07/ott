import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saran_ott/widgets/model.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

  bool _switchValue = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height/1,
          width: MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(color: bg,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Settings",
                  style: pageheading,
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  title: Text("Notifications",
                    style: category,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Video Quality",
                    style: category,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Data saver",
                  style: category,
                  ),
                  trailing: CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("App Language",
                  style: category,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Auto Play",
                    style: category,
                  ),
                  trailing: CupertinoSwitch(
                    value: _switchValue1,
                    onChanged: (value) {
                      setState(() {
                        _switchValue1 = value;
                      });
                    },
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  leading: Text("Download Quality",
                    style: category,
                  ),
                  title: Text("          Always ask",
                    style: TextStyle(color: Colors.white54),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Download on wify only",
                    style: category,
                  ),
                  trailing: CupertinoSwitch(
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    },
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Downloads",
                    style: category,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
                ListTile(
                  title: Text("Vidy Subscriptions",
                    style: category,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
