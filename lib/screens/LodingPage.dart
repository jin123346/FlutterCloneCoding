import 'package:flutter/material.dart';

import 'Login/Login_page.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  Future<void> _simulateLoading() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _simulateLoading(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 로딩 상태
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            // 로딩 완료
            return Center(
              child: Text("로딩 완료!"),
            );
          }
          return LoginPage();
        },
      ),
    );
  }
}
