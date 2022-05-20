import 'package:flutter/material.dart';
import 'package:sicca/core/components/helpers/pallete.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        strokeWidth: 1.8,
        valueColor: AlwaysStoppedAnimation<Color>(Pallete.mediumPurple,),
      ),
    );
  }
}