import 'package:flutter/material.dart';
import 'package:protofolio/config/Screensize.dart';
import 'package:protofolio/resource/DesktopNav.dart';
import 'package:protofolio/resource/Mobilenav.dart';
import 'package:protofolio/resource/page/desktop/Index.dart';
import 'package:protofolio/resource/page/mobile/Index.dart';
import 'package:protofolio/resource/page/mobile/Mobiledropdown.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Screensize get screen => Screensize(context);
  bool isOpen = false;

  void toggleMenu() => setState(() => isOpen = !isOpen);

  @override
  Widget build(BuildContext context) {
    if (screen.desktop) {
      return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Desktopnav(),
        ),
        body: desktopIndex(),
      );
    } else {
      return Scaffold(
        appBar: Mobilenav(onMenuToggle: toggleMenu),
        body: Column(
          children: [
            // kalau menu terbuka, tampilkan dropdown di atas konten (mendorong konten ke bawah)
            if (isOpen)
              const MobileDropdown(isOpen: true)
            else
              MobileDropdown(isOpen: false),
            // sisanya isi utama yang scrollable
            const Expanded(child: mobileIndex()),
          ],
        ),
      );
    }
  }
}
