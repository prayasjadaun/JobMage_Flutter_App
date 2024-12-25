import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  final String title;
  final String description;
  final Widget? media; // Can be Image or Lottie animation

  const ContentSection({
    super.key,
    required this.title,
    required this.description,
    this.media,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (title.isNotEmpty)
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          if (media != null) media!,
        ],
      ),
    );
  }
}
