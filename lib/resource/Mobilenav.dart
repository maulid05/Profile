import 'package:flutter/material.dart';

class Mobilenav extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onMenuToggle;
  const Mobilenav({super.key, required this.onMenuToggle});

  // ini wajib: memberi tahu Scaffold berapa tinggi AppBar ini
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF455A64), Color(0xFF1A237E), Color(0xFF455A64)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(spreadRadius: 3, blurRadius: 3, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          const Text(
            "Mobile",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          IconButton(
            onPressed: onMenuToggle,
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
