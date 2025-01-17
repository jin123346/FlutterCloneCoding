import 'package:flutter/material.dart';

import '../../../model/Menu.dart';
import '../../components/image_container.dart';

class MenuCircleContainer extends StatelessWidget {
  final Menu menu;
  const MenuCircleContainer({required this.menu, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 130,
      height: 150,
      child: Column(
        children: [
          ImageContainer(
            height: 100,
            width: 100,
            borderRadius: 75,
            imgUri: menu.imguri,
          ),
          Text(
            menu.menuName,
            softWrap: true,
            style: textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
