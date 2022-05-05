import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class AuthenticationForm extends StatelessWidget {
  const AuthenticationForm({
    Key? key,
    required this.authenticationFormKey,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  }) : super(key: key);

  final GlobalKey<FormState> authenticationFormKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Form(
        key: authenticationFormKey,
        child: Column(
          children: [
            TextFormField(
              key: const Key('authenticationemail_textfield'),
              controller: emailController,
              focusNode: emailFocusNode,
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
              controller: passwordController,
              focusNode: passwordFocusNode,
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
