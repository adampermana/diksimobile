import 'package:flutter/material.dart';
import 'package:myapp/page/home/page_Home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
  HomePage(),

    const Center(
      child: Text('Note',style: TextStyle(
        fontSize: 40,
      ),
      ),
    ),

    const Center(
      child: Text('Receipt',style: TextStyle(
        fontSize: 40,
      ),
      ),
    ),

    const Center(
      child: Text('Setting',style: TextStyle(
        fontSize: 40,
      ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF5864D3),
        currentIndex: _selectedIndex,
        onTap: _onTap,
        iconSize: 24,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex ==0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1 ? Image.asset('assets/icons/note.png') : Image.asset('assets/icons/note.png'),
            label: 'Note',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2 ? Image.asset('assets/icons/receipt.png') : Image.asset('assets/icons/receipt.png'),
            label: 'Receipt',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ? Image.asset('assets/icons/setting.png') : Image.asset('assets/icons/setting.png'),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
