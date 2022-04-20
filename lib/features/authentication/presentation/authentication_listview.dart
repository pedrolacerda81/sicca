import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';
import 'package:sicca/core/components/widgets/main_button.dart';
import 'package:sicca/features/authentication/presentation/authentication_form.dart';

class AuthenticationListView extends StatelessWidget {
  const AuthenticationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    return ListView(
      children: [
        SizedBox(height: screenSize.height * 0.06),
        SizedBox(
          height: screenSize.height * 0.1,
          child: Image.asset('assets/icons/healthy-food.png'),
        ),
        SizedBox(height: screenSize.height * 0.01),
        titleRow(text: 'Sistema Computacional'),
        titleRow(text: 'de Composição de Alimentos'),
        titleRow(text: 'SiCCA'),
        SizedBox(height: screenSize.height * 0.03),
        AuthenticationForm(),
        SizedBox(height: screenSize.height * 0.03),
        Container(
          margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
          child: SiCCAMainButton(
            label: 'ENTRAR',
            onPressed: () {},
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

  Row titleRow({required String text}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: authenticationTextStyle(isBold: true, fontSize: 18.0),
          ),
        ],
      );
}
