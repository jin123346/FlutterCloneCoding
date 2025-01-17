import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/model/Menu.dart';
import 'package:flutter_clone_coding/size.dart';
import 'package:flutter_clone_coding/theme.dart';
import 'package:gif_view/gif_view.dart';

import '../components/apbar_preferred_size.dart';
import 'components/menu_circle_container.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ThemeData themeData = StarbucksTheme.theme;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          _buildHomeDeliveryCard(context),
          const SizedBox(height: 8),
          _buildMenuCard(context),
          const SizedBox(height: 8),
          _buildAdCard(context),
          const SizedBox(height: 8),
          _buildNewMenuCard(context),
          const SizedBox(height: 8),
        ],
      ),
    ));
  }

  _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Icon(
            CupertinoIcons.envelope,
            size: 35,
          ),
          const SizedBox(
            width: 8,
          ),
          Text('What`s news'),
          const Spacer(),
          Icon(CupertinoIcons.bell)
        ],
      ),
      bottom: AppBarBottomLine(),
    );
  }

  _buildHomeDeliveryCard(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(8.0),
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tip',
                    style: textTheme.labelSmall,
                  ),
                  Text(
                    'Gift 배송하기',
                    style: textTheme.headlineMedium,
                  ),
                  Text(
                    'Open',
                    style: textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 15),
                  Text('2022년 9월까지'),
                  Text('별★을 2배로 적립해 드립니다.'),
                ],
              ),
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/delivery.png',
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  } //end of _buildHomeDeliveryCard

  _buildMenuCard(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '함께하면 좋은 푸드 메뉴',
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                menuList.length,
                (index) {
                  return MenuCircleContainer(menu: menuList[index]);
                },
              )),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  _buildAdCard(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/event_background.PNG',
                fit: BoxFit.cover,
              ),
              Positioned(
                  bottom: 25,
                  left: 110,
                  child: GifView.asset(
                    'assets/images/gif_buddypass_logo.gif',
                    width: 150,
                    fit: BoxFit.cover,
                  ))
            ],
          ),
          const SizedBox(height: 35),
          Center(
              child: Text(
            '30일간 만나는 30% 헤택',
            style: customTextTheme(context).displaySmall,
          )),
          const SizedBox(height: 15),
          Text(
            '감사한 마음을 담아 정규 서비스로 찾아왔아요. \n'
            '더욱 합리적인 혜택으로 만나보세요. ',
            style: customTextTheme(context).labelMedium,
          ),
          const SizedBox(height: 35),
        ],
      ),
    ));
  }

  _buildNewMenuCard(BuildContext context) {
    return Container(
      width: getParentWith(context),
      child: Card(
        child: Image.asset('assets/images/newMenu.jpg'),
      ),
    );
  }
}
