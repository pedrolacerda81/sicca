import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicca/core/components/widgets/loading_container.dart';
import 'package:sicca/features/authentication/application/authentication_bloc.dart';
import 'package:sicca/features/authentication/presentation/authentication_listview.dart';

class AuthenticationStateHandler extends StatelessWidget {
  AuthenticationStateHandler({Key? key}) : super(key: key);

  final GlobalKey<FormState> _authenticationFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  Future<void> handleSubmitSignInForm({required BuildContext context}) async {}

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
            initial: (initialState) => AuthenticationListView(
              authenticationFormKey: _authenticationFormKey,
              emailController: _emailController,
              emailFocusNode: _emailFocusNode,
              passwordController: _passwordController,
              passwordFocusNode: _passwordFocusNode,
              handleSubmitSignInForm: () =>
                  handleSubmitSignInForm(context: context),
            ),
          ),
        );
      },
    );
  }
}
