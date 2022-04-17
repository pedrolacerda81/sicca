import 'package:sicca/injection.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicca/features/splash/application/splash_bloc.dart';
import 'package:sicca/features/splash/presentation/splash_statehander.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: BlocProvider<SplashBloc>(
        create: (_) =>
            getIt<SplashBloc>()..add(const SplashEvent.checkUserStatus()),
        child: const SplashStateHandler(),
      ),
    );
  }
}
