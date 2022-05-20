import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sicca/core/components/helpers/pallete.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SiCCAAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hasBackButton;

  const SiCCAAppBar({
    required Key key,
    this.hasBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      backgroundColor: Pallete.darkPurple,
      title: Text(
        'SiCCA',
        style: GoogleFonts.nunito(
          color: Pallete.white,
          fontSize: 26.0,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  InkWell buildLeadingButton({
    required void Function() onTap,
    required IconData iconData,
  }) =>
      InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: FaIcon(
            iconData,
            color: Pallete.ligthPink,
            size: 20.0,
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
