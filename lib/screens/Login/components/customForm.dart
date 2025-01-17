import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class Customform extends StatelessWidget {
  String _uid = '';
  String _password = '';
  Customform({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: '아이디',
            onSaved: (newValue) {
              _uid = newValue ?? '';
              print('아이디 저장: $newValue');
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
