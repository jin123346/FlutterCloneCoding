import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/theme.dart';

//이미지의 가로, 세로, radius, url,

class ImageContainer extends StatelessWidget {
  final double borderRadius;
  final String imgUri;
  final double width;
  final double height;

  const ImageContainer(
      {required this.borderRadius,
      required this.imgUri,
      required this.width,
      required this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: StarbucksTheme.primaryGreen,
          border: Border.all(color: StarbucksTheme.primaryGreen),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(
          imgUri,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
