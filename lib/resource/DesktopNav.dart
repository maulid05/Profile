import 'package:flutter/material.dart';
import 'package:protofolio/resource/Navitems.dart';

class Desktopnav extends StatefulWidget {
  const Desktopnav({super.key});

  @override
  State<Desktopnav> createState() => _DesktopnavState();
}

class _DesktopnavState extends State<Desktopnav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF455A64), Color(0xFF1A237E), Color(0xFF455A64)],
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(spreadRadius: 3, blurRadius: 3, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsetsGeometry.only(right: 20)),
          Text(
            "Desktop",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
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
                  fontSize: 18,
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
