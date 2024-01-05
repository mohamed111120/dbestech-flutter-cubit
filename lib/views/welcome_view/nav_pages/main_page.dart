import 'package:dbestech/views/welcome_view/nav_pages/bar_item_page.dart';
import 'package:dbestech/views/welcome_view/nav_pages/home_page.dart';
import 'package:dbestech/views/welcome_view/nav_pages/my_page.dart';
import 'package:dbestech/views/welcome_view/nav_pages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> barBages = const[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap( index) {
setState(() {
  currentIndex = index;

});  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: barBages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed ,
        backgroundColor: Colors.white ,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(.5),
          showSelectedLabels: false,
          showUnselectedLabels: false ,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Bar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My',
            ),
          ]),
    );
  }
}
