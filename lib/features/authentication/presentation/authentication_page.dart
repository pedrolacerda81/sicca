import 'package:dio/dio.dart';
import 'package:sicca/injection.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicca/features/authentication/application/authentication_bloc.dart';
import 'package:sicca/features/authentication/presentation/authentication_statehandler.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({Key? key}) : super(key: key);
  final CancelToken cancelToken = CancelToken();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: BlocProvider<AuthenticationBloc>(
        create: (_) => getIt<AuthenticationBloc>(),
        child: AuthenticationStateHandler(),
      ),
    );
  }
}
