import 'package:flutter/material.dart';

class desktopIndex extends StatefulWidget {
  const desktopIndex({super.key});

  @override
  State<desktopIndex> createState() => _desktopIndexState();
}

class _desktopIndexState extends State<desktopIndex> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
