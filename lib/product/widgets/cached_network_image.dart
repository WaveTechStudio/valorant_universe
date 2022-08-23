import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => const SizedBox.shrink(),
      imageUrl: imageUrl ?? "",
      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
    );
  }
}
