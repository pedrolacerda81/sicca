import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  AuthenticationForm({Key? key}) : super(key: key);
  final GlobalKey<FormState> _authenticationFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _authenticationFormKey,
      child: Column(
        children: const [],
      ),
    );
  }
}
