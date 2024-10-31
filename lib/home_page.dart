
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/camera_page.dart';
import 'package:flutter_bottom_navigation/contact_page.dart';
import 'package:flutter_bottom_navigation/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int selectedPageIndex=0;


  //funtion
  void onItemTapped(int index)
  {

    print("Index=$index");

    setState(() {
      selectedPageIndex = index;
    });

  }


  //pages
  List<Widget> pages = <Widget>
  [

    ContactPage(),
    CameraPage(),
    SettingsPage()

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bottom Navigation", style: TextStyle(
          color: Colors.white,
        ),),
      ),

      body: Center(
        child: pages.elementAt(selectedPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
             BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
          label: "Contact",
          backgroundColor: Colors.green,
        ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "Camera",
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.teal,
            ),
          ],

          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blue,
          iconSize: 40,


          currentIndex: selectedPageIndex,
         onTap: onItemTapped,
      ),
    );
  }



}
