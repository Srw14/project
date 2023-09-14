import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/forgotpasswprd.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
 
class  cnvabar extends StatefulWidget {
  const  cnvabar({super.key});

  @override
  State< cnvabar> createState() => _cnvabarState();
}

class _cnvabarState extends State< cnvabar> {
  List Screens = [
    homescreen(),
    forgotpasswordscreen(),
    loginscreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFEDECF2),
        index: _selectedIndex,
        items: [
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.add, size: 30, color: Colors.white,),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}