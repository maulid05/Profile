import 'package:flutter/material.dart';
import 'package:protofolio/resource/Navitems.dart';

class MobileDropdown extends StatelessWidget {
  final bool isOpen;
  const MobileDropdown({super.key, required this.isOpen});

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: isOpen
          ? Column(
              children: [
                for (final item in Navitems)
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                      ),
                      child: Text(item, style: const TextStyle(fontSize: 16)),
                    ),
                  ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
