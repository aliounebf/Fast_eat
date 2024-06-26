import 'page_home.dart';
import 'accueil.dart';
import 'about.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    PageHome(),
    ListMenu(),
    About(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Image.asset("assets/logo_fast_eat.jpg",width: 50,height: 50,),
        // title: Text("FAST EAT",
        //   style: TextStyle(color: Colors.black),
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:_pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedIconTheme: const IconThemeData(color: Color(0xFF0B8D4E), size: 30),
      selectedItemColor: Color(0xFF0B8D4E),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedItemColor: Colors.black,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outlined),
            label: 'A propos',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
    ),
    );
  }
}

