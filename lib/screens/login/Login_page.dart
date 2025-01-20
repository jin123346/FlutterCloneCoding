import 'package:flutter/material.dart';
import 'components/customForm.dart';
import 'package:flutter_clone_coding/size.dart';
import 'package:flutter_clone_coding/theme.dart';
import '/screens/Login/components/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uidController = TextEditingController();
  final passwordController = TextEditingController();
  final scroll = ScrollController();

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
        body: Column(children: [
          Flexible(
            child: ListView(
              controller: scroll,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              children: [
                Text(
                  '로그인',
                  style: customTextTheme(context).displayLarge,
                ),
                Stack(children: [
                  Container(
                    width: getParentWith(context),
                    height: 150,
                  ),
                  Positioned(
                    left: -45,
                    top: -10,
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
                Customform(uidController, passwordController, scroll),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '아이디찾기',
                          style: customTextTheme(context).bodySmall,
                        )),
                    Container(
                      height: 15,
                      width: 1,
                      color: StarbucksTheme.textDark,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '비밀번호찾기',
                          style: customTextTheme(context).bodySmall,
                        )),
                    Container(
                      height: 15,
                      width: 1,
                      color: StarbucksTheme.textDark,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '회원가입',
                          style: customTextTheme(context).bodySmall,
                        )),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('버튼'),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
