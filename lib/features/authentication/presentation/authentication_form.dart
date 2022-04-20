import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class AuthenticationForm extends StatelessWidget {
  AuthenticationForm({Key? key}) : super(key: key);
  final GlobalKey<FormState> _authenticationFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Form(
        key: _authenticationFormKey,
        child: Column(
          children: [
            TextFormField(
              key: const Key('authentication_email_textfield'),
              controller: _emailController,
              focusNode: _emailFocusNode,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                hintText: 'name@email.com',
              ),
              style: GoogleFonts.nunito(
                color: Pallete.darkPurple,
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            TextFormField(
              key: const Key('authentication_password_textfield'),
              controller: _passwordController,
              focusNode: _passwordFocusNode,
              decoration: const InputDecoration(
                labelText: 'Senha',
                hintText: 'Senha',
              ),
              style: GoogleFonts.nunito(
                color: Pallete.darkPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
