import 'package:flutter/material.dart';
import 'Navitems.dart';

class Mobilenav extends StatefulWidget {
  const Mobilenav({super.key});

  @override
  State<Mobilenav> createState() => _MobilenavState();
}

class _MobilenavState extends State<Mobilenav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF455A64), Color(0xFF1A237E), Color(0xFF455A64)],
        ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(spreadRadius: 3, blurRadius: 3, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsetsGeometry.only(right: 20)),
          Text(
            "Mobile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 0,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
          Spacer(),
          for (int i = 0; i < Navitems.length; i++)
            TextButton(
              onPressed: () {},
              child: Text(
                Navitems[i],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 0,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
            ),
          Padding(padding: EdgeInsetsGeometry.only(right: 20)),
        ],
      ),
    );
  }
}
