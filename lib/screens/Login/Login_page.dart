import 'package:flutter/material.dart';
import 'components/customForm.dart';
import 'package:flutter_clone_coding/size.dart';
import 'package:flutter_clone_coding/theme.dart';
import '/screens/Login/components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                '로그인',
                style: customTextTheme(context).displayLarge,
              ),
              SizedBox(height: 20),
              Stack(children: [
                Container(
                  width: getParentWith(context),
                  height: 150,
                ),
                Positioned(
                  left: -45,
                  child: Logo(),
                ),
              ]),
              Text(
                '안녕하세요 \n스타벅스 입니다.',
                style: customTextTheme(context).displaySmall,
              ),
              Text(
                '회원 서비스 이용을 위해 로그인 해주세요.',
                style: customTextTheme(context).bodyMedium,
              ),
              SizedBox(height: 30),
              Customform(),
            ],
          ),
        ),
      ),
    );
  }
}
