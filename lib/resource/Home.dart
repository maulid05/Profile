import 'package:flutter/material.dart';
import 'package:protofolio/config/Screensize.dart';
import 'package:protofolio/resource/DesktopNav.dart';
import 'package:protofolio/resource/Mobilenav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Screensize get screen => Screensize(context);
  @override
  Widget build(BuildContext context) {
    if (screen.desktop) {
      return const Scaffold(body: Desktopnav());
    } else {
      return const Scaffold(body: Mobilenav());
    }
  }
}
