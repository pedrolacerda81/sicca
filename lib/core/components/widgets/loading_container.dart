import 'package:flutter/material.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        strokeWidth: 1.8,
        valueColor: AlwaysStoppedAnimation<Color>(Pallete.mediumPurple,),
      ),
    );
  }
}