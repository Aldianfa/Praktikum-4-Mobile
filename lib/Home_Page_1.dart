import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:praktikum3/onboarding_page.dart';
import 'package:praktikum3/sharedpref.dart';

class Home_Page extends StatefulWidget {
  Function setTheme;
  Home_Page({Key? key, required this.setTheme}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool isDarkMode = false;


  @override
  Widget build(BuildContext context) {
    String darkmode = SharedPref.pref?.getString('isDarkMode') ?? "ini Darkmode";
    print(darkmode);

    List <String> Gambar = [
      "1.png",
      "2.png",
      "3.png",
      "4.jpg",
      "5.png",
      "6.png",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Color.fromARGB(255, 207, 53, 51),

        actions: [
          Padding(padding: EdgeInsets.only(left: 50)),
          IconButton(
            icon: new Icon(Icons.sunny),
            onPressed: () {
              print('settings');
              
              isDarkMode =!isDarkMode;
              widget.setTheme(isDarkMode);
            },
          ),
          
        ],

        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            print('object');
            // Navigator.of(context).pushReplacement();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage(),),);
          },
        ),
      ),

      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            width: 320,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black.withOpacity(0.5),
                
                )
            ),
            
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: 'Search',
              ),
            ),  
          ),

          const Padding(padding: EdgeInsets.all(10)),
          const Padding(
            padding: EdgeInsets.only(right: 230),
            child: Text('Top Sneakers',
            textAlign: TextAlign.center,
            style: 
            TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),

          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: Gambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/grid/${Gambar[i]}'),
                );
              },
            )
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 207, 53, 51),
        items: [
          TabItem(icon: Icons.shopping_bag_rounded, title: 'shop'),
          TabItem(icon: Icons.message_rounded, title: 'Message'),
          TabItem(icon: Icons.home_rounded, title: 'Home'),
          TabItem(icon: Icons.people_alt_rounded, title: 'profile'),
          TabItem(icon: Icons.settings_rounded, title: 'settings'),
        ],
        initialActiveIndex: 2,
      ),
    );
  }
}