import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class SiCCAMainButton extends StatelessWidget {
  const SiCCAMainButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: Pallete.darkPurple,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
        child: Text(
          label,
          style: GoogleFonts.roboto(
            letterSpacing: 1.0,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}