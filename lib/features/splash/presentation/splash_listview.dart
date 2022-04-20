import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class SplashListView extends StatelessWidget {
  const SplashListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.white,
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            key: const Key('splash_image'),
            height: 100.0,
            child: Image.asset('assets/icons/healthy-food.png'),
          ),
          const SizedBox(height: 10.0),
          Row(
            key: const Key('splash_title_row_one'),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sistema Computacional',
                style: splashTextStyle(isBold: true, fontSize: 18.0),
              ),
            ],
          ),
          Row(
            key: const Key('splash_title_row_two'),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'de Composição de Alimentos',
                style: splashTextStyle(isBold: true, fontSize: 18.0),
              ),
            ],
          ),
          const Spacer(),
          Row(
            key: const Key('splash_version_row'),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'v1.0.0',
                style: splashTextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  TextStyle splashTextStyle({
    double fontSize = 13.0,
    bool isBold = false,
  }) =>
      GoogleFonts.nunito(
        fontSize: fontSize,
        color: Pallete.darkPurple,
        letterSpacing: 1.0,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      );
}
