import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../size.dart';
import '/common/utils/logger.dart';
import '/screens/menu/menu_page.dart';
import '/screens/myStarbucks/my_page.dart';
import '/screens/notice/notice_page.dart';
import '/screens/order/order_page.dart';
import '/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  bool isLoading = false;

  Future<void> _performAsynTask() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLoading = false;
    });
  }

  void changeStackPages(int index) async {
    setState(() {
      isLoading = true; // 로딩 화면 활성화
    });

    await Future.delayed(Duration(milliseconds: 500)); // 화면 전환 딜레이
    setState(() {
      _selectedIndex = index;
      isLoading = false; // 로딩 화면 비활성화
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      logger.d('여기');
      _showBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            NoticePage(),
            OrderPage(),
            MenuPage(),
            MyPage(),
          ],
        ),
        if (isLoading)
          Container(
            color: StarbucksTheme.primaryGreen, // 배경색 반투명
            child: Center(
              child: Image.asset('assets/images/starbucks-logo.png'),
            ),
          ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: StarbucksTheme.primaryGreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          changeStackPages(index);
          if (index == 1) {
            _showBottomSheet();
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: '홈',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'pay'),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.mugHot),
            label: 'order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'my',
          ),
        ],
      ),
    ));
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: getParentWith(context),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('바텀 시트 팝업',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('앱에 오신 것을 환영합니다!'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // 바텀시트 닫기
                },
                child: Text('닫기'),
              ),
            ],
          ),
        );
      },
    );
  }
}
