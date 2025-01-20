import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final label;
  final TextEditingController controller;
  final ScrollController scroll;
  const CustomTextFormField(
      {required this.label,
      required this.controller,
      required this.scroll,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: label == '비밀번호',
      keyboardType: TextInputType.text,
      onTap: () async {
        print('textfield');
        await Future.delayed(Duration(seconds: 2));
        scroll.jumpTo(scroll.position.maxScrollExtent);
      },
      decoration: InputDecoration(
        labelText: label,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: StarbucksTheme.primaryGreen,
          ),
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label 을 입력하세요.';
        }
        return null;
      },
    );
  }
}
