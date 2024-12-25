import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String text;
  final bool isHighlighted;
  final bool showIcon;

  const TagWidget({
    super.key,
    required this.text,
    this.isHighlighted = false,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isHighlighted ? Colors.green[200] : Colors.grey[300],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          if (showIcon) ...[
            const SizedBox(width: 4),
            Icon(
              Icons.favorite,
              color: isHighlighted ? Colors.green[900] : Colors.grey[900],
            ),
          ],
        ],
      ),
    );
  }
}
