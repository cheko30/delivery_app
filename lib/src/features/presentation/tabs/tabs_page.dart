import 'package:flutter/material.dart';
// Importing the tabs
import 'package:delivery_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  final List<Widget> _widgetsOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab(),
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetsOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    iconSize: 30.0,
    selectedItemColor: Colors.amberAccent,
    unselectedItemColor: Colors.grey,
    currentIndex: _selectedItemIndex,
    onTap: _changeWidget,
    showUnselectedLabels: true,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explore'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'My Order'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Favourite'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        label: 'Profile'
      ),
    ]
  );

}
}