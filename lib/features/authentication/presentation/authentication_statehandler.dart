import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicca/core/components/widgets/loading_container.dart';
import 'package:sicca/features/authentication/application/authentication_bloc.dart';
import 'package:sicca/features/authentication/presentation/authentication_listview.dart';

class AuthenticationStateHandler extends StatelessWidget {
  const AuthenticationStateHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {},
      builder: (BuildContext context, AuthenticationState state) {
        return Scaffold(
          appBar: state.maybeMap(
            orElse: () => null,
          ),
          body: state.maybeMap(
            orElse: () => const LoadingContainer(),
            initial: (initialState) => const AuthenticationListView(),
          ),
        );
      },
    );
  }
}
