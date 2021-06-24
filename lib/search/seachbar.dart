import 'package:flutter/material.dart';

class Nahid extends StatelessWidget {
  const Nahid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'search',
          icon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
