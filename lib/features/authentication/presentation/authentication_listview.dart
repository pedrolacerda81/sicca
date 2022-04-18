import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';
import 'package:sicca/features/authentication/presentation/authentication_form.dart';

class AuthenticationListView extends StatelessWidget {
  const AuthenticationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 100.0,
          child: Image.asset('assets/icons/healthy-food.png'),
        ),
        const SizedBox(height: 10.0),
        titleRow(text: 'Sistema Computacional'),
        titleRow(text: 'de Composição de Alimentos'),
        titleRow(text: 'SiCCA'),
        const SizedBox(height: 20.0),
        AuthenticationForm(),
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
