//หน้าแรก
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/add.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/categorieswidget.dart';
import 'package:flutter_application_1/itemwidget.dart';
import 'package:flutter_application_1/navbar.dart';

import 'homeappbar.dart';

//enum Gender { Male, Female,}

class homescreen extends StatelessWidget {
  // int _selectedIndex = 0;

  // final List<Widget> Screen = const [
  //   homescreen(),
  //   addproductpage(),
  //   cartpage(),
  // ];

  // final List<Icon> items = const [
  //   Icon(Icons.home, size: 30, color: Colors.white,),
  //   Icon(Icons.add, size: 30, color: Colors.white,),
  //   Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
  // ];

  int index = 2;
  // Gender? _Gender;
  @override
  Widget build(BuildContext context) {
    List<Color> Cl = [
      Color(0xFFFD4556),
      Color(0xFFBD3944),
      Color(0xFF53212B),
    ];
    return Scaffold(
      body: ListView(
        children: [
          homeappbar(),
          Container(
              // height: 500,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFBF5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here...",
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            size: 27,
                            color: Color(0xFFFD4556),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        for (int a = 0; a < 3; a++)
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: MediaQuery.of(context).size.height / 5.5,
                            decoration: BoxDecoration(
                              color: Cl[a],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Special Deal using code for 30% off",
                                        style: TextStyle(
                                          color: Color(0xFFFFFBF5),
                                          fontSize: 22,
                                        ),
                                      ),
                                      Container(
                                        width: 90,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFBF5),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "See More",
                                            style: TextStyle(
                                              color: Color(0xFFFD4556),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/commercial.png",
                                  height: 180,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD4556),
                      ),
                    ),
                  ),
                  CategoriesWidget(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Product",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD4556),
                      ),
                    ),
                  ),
                  itemWidget(),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return addproductpage();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),





      // bottomNavigationBar: cnvabar(),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Color(0xFFEDECF2),
      //   height: 50,
      //   color: Color(0xFFFD4556),
      //   items: <Widget>[  
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.add,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.shopping_cart,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ],
      //   onTap: (index) {
      //     switch (index) {
      //       case 0:
      //         Navigator.pushReplacement(context,
      //             MaterialPageRoute(builder: (context) => homescreen()));
      //         break;
      //       case 1:
      //         Navigator.pushReplacement(context,
      //             MaterialPageRoute(builder: (context) => addproductpage()));
      //         break;
      //       case 2:
      //         Navigator.pushReplacement(
      //             context, MaterialPageRoute(builder: (context) => cartpage()));
      //         break;
      //     }
      //   },
      // ),
    );
  }
}

// void _onTapTapped (int index,BuildContext context){
//   switch(index){
//     case 0:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen(),));
//     break;
//     case 1:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => forgotpasswordscreen(),));
//     break;
//     case 2:
//     Navigator.push(context, MaterialPageRoute(builder: (context) => loginscreen(),));
//     break;
//   }
//}