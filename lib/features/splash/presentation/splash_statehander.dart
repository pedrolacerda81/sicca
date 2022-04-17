import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicca/features/splash/application/splash_bloc.dart';
import 'package:sicca/features/splash/presentation/splash_listview.dart';

class SplashStateHandler extends StatelessWidget {
  const SplashStateHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (BuildContext context, SplashState state) {
        state.maybeMap(orElse: () {},
        userAuthenticated: (userAuthenticatedState) => Get.toNamed('/main'), 
        userUnauthenticated: (userUnauthenticatedState) => Get.toNamed('/authentication'), 
        );
      },
      builder: (BuildContext context, SplashState state) =>
          const Scaffold(
            body: SplashListView(),
          ),
    );
  }
}
