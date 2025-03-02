import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AtomixImage extends StatelessWidget {
  final String imageSrc;
  final double? height;
  final double? width;
  const AtomixImage(
      {super.key, required this.imageSrc, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageSrc,
      fit: BoxFit.cover,
      height: height,
      width: width,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
