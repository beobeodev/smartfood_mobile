import 'package:flutter/material.dart';

class CircleNetworkImage extends StatelessWidget {
  final double size;
  final String url;

  const CircleNetworkImage(
    this.url, {
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: Image.network(
        url,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
