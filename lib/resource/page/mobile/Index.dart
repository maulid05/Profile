import 'package:flutter/material.dart';

class mobileIndex extends StatefulWidget {
  const mobileIndex({super.key});

  @override
  State<mobileIndex> createState() => _mobileIndexState();
}

class _mobileIndexState extends State<mobileIndex> {
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
