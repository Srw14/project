//หน้าตะกร้า
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/productslider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
      ),
      body: Center(
        child: Text('cart page'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFEDECF2),
        height: 50,
        color: Color(0xFFFD4556),
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.add, size: 30, color: Colors.white,),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homescreen()));
            break;
            case 1:
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => addproductpage()));
            break;
            case 2:
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => cartpage()));
            break;
          }
        },
      ),
    );
  }
}