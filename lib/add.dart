//หน้าเพิ่มสินค้า
import 'package:flutter/material.dart';
import 'package:flutter_application_1/addhomeappbar.dart';
import 'package:flutter_application_1/productslider.dart';
import 'package:flutter_application_1/selectgame.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class addproductpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          addhomeappbar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            ],
          ),
        ],
      ),
    );
  }
}