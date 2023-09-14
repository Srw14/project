import 'package:flutter/material.dart';

class squaretile extends StatelessWidget {
  final String imagesPath;
  const squaretile({super.key, required this.imagesPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagesPath,height: 40,
      ),
    );
  }
}