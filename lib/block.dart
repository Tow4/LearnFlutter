import "package:flutter/material.dart";

class Block extends StatelessWidget {
  const Block(
    this.title,
    this.icon, {
    super.key,
    required this.colour,
    this.value = "",
  });

  final String title;
  final IconData icon;
  final Color colour;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 38),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 4),
          Text(title),
        ],
      ),
    );
  } //build context
}
