import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class Customform extends StatelessWidget {
  String _uid = '';
  String _password = '';
  final TextEditingController userController;
  final TextEditingController passwordController;
  final ScrollController scroll;

  Customform(this.userController, this.passwordController, this.scroll,
      {super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: '아이디',
            controller: userController,
            scroll: scroll,
          ),
          const SizedBox(height: 8),
          CustomTextFormField(
            label: '비밀번호',
            controller: passwordController,
            scroll: scroll,
          )
        ],
      ),
    );
  }
}
