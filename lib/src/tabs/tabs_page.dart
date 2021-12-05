import 'package:app_bananafood/src/tabs/explore_tab.dart';
import 'package:app_bananafood/src/tabs/favoritas.dart';
import 'package:app_bananafood/src/tabs/mis_recetas.dart';
import 'package:app_bananafood/src/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MisRecetas(),
    Favorita(),
    Profile()
  ];


  int _selectedItemIndex = 0;

  void _cambiarWidget(int index){
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
  return BottomNavigationBar(
    iconSize: 30.0,
    selectedItemColor: Theme.of(context).accentColor,
    unselectedItemColor: Colors.grey,
    currentIndex: _selectedItemIndex,
    onTap: _cambiarWidget,
    showUnselectedLabels: true,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explorar'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'Mis recetas'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Favoritos'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        label: 'Perfil'
      )

    ],
  );
}
}
