import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';
import 'package:sicca/core/components/widgets/main_button.dart';
import 'package:sicca/features/authentication/presentation/authentication_form.dart';

class AuthenticationListView extends StatelessWidget {
  const AuthenticationListView({
    Key? key,
    required this.handleSubmitSignInForm,
    required this.authenticationFormKey,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  }) : super(key: key);

  final void Function() handleSubmitSignInForm;
  final GlobalKey<FormState> authenticationFormKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    return ListView(
      children: [
        SizedBox(height: screenSize.height * 0.06),
        SizedBox(
          key: const Key('authentication_logo_image'),
          height: screenSize.height * 0.1,
          child: Image.asset('assets/icons/healthy-food.png'),
        ),
        SizedBox(height: screenSize.height * 0.01),
        titleRow(
          key: const Key('authentication_title_row_one'),
          text: 'Sistema Computacional',
        ),
        titleRow(
          key: const Key('authentication_title_row_two'),
          text: 'de Composição de Alimentos',
        ),
        titleRow(
          key: const Key('authentication_title_row_three'),
          text: 'SiCCA',
        ),
        SizedBox(height: screenSize.height * 0.03),
        AuthenticationForm(
          key: const Key('authentication_sign_in_form'),
          authenticationFormKey: authenticationFormKey,
          emailController: emailController,
          emailFocusNode: emailFocusNode,
          passwordController: passwordController,
          passwordFocusNode: passwordFocusNode,
        ),
        SizedBox(height: screenSize.height * 0.03),
        Container(
          margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
          child: SiCCAMainButton(
            key: const Key('authentication_sign_in_button'),
            label: 'ENTRAR',
            onPressed: handleSubmitSignInForm,
          ),
        ),
      ],
    );
  }

  TextStyle authenticationTextStyle({
    double fontSize = 13.0,
    bool isBold = false,
  }) =>
      GoogleFonts.nunito(
        fontSize: fontSize,
        color: Pallete.darkPurple,
        letterSpacing: 1.0,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      );

  Row titleRow({required Key key, required String text}) => Row(
        key: key,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: authenticationTextStyle(isBold: true, fontSize: 18.0),
          ),
        ],
      );
}
