import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/screens/Login/Login_page.dart';
import 'common/utils/logger.dart';
import 'screens/home/home_page.dart';
import 'screens/main_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('--------debug 프린트출력----------');
    logger.d("logger로 출력");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: StarbucksTheme.theme,
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MainScreen(),
      },
      initialRoute: '/login',
    );
  }
}
