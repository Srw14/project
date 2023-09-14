import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/product.dart';
// import 'package:flutter_application_1/screen/login.dart';

void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        ),
        routes: {
          "productpage": (context) => productpage(),
        },
      home:loginscreen()   
    );
  }
}