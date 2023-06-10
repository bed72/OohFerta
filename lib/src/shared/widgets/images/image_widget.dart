import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/constants/app_constant.dart';

class ImageWidget extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final double? width;
  final double height;

  const ImageWidget({
    super.key,
    required this.image,
    required this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      '${AppContants.imagesPath}$image',
      fit: fit,
      width: width,
      height: height,
    );
  }
}
