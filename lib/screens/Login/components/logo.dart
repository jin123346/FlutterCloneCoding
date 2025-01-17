import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/starbucks-logo.png',
          height: 180,
          width: 180,
        ),
        Positioned(
          bottom: 38,
          left: 30,
          child: Container(
            width: 180,
            height: 15,
            color: Colors.white,
            child: SizedBox(),
          ),
        )
      ],
    );
  }
}
