import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final label;
  final FormFieldSetter<String>? onSaved;
  const CustomTextFormField(
      {required this.label, required this.onSaved, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      obscureText: label == '비밀번호',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
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
