import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sicca/features/authentication/application/authentication_bloc.dart';
import 'package:sicca/features/authentication/presentation/authentication_listview.dart';

class FakeAuthenticationBloc extends Fake implements AuthenticationBloc {}

void main() {
  BlocProvider buildAuthenticationPage() {
    final GlobalKey<FormState> _authenticationFormKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final FocusNode _emailFocusNode = FocusNode();
    final FocusNode _passwordFocusNode = FocusNode();
    return BlocProvider<FakeAuthenticationBloc>(
      create: (_) => FakeAuthenticationBloc(),
      child: GetMaterialApp(
        home: Scaffold(
          body: AuthenticationListView(
            authenticationFormKey: _authenticationFormKey,
            emailController: _emailController,
            emailFocusNode: _emailFocusNode,
            passwordController: _passwordController,
            passwordFocusNode: _passwordFocusNode,
            handleSubmitSignInForm: () {},
          ),
        ),
      ),
    );
  }

  group(
    'Authentication Page Widget Test Group -->',
    () {
      testWidgets(
        'If there is the logo image at the authentication page',
        (WidgetTester tester) async {
          await tester.pumpWidget(buildAuthenticationPage());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('authentication_logo_image')),
              findsOneWidget);
        },
      );

      testWidgets(
        'If there is the correct title on authentication page',
        (WidgetTester tester) async {
          await tester.pumpWidget(buildAuthenticationPage());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('authentication_title_row_one')),
              findsOneWidget);
          expect(find.byKey(const Key('authentication_title_row_two')),
              findsOneWidget);
          expect(find.byKey(const Key('authentication_title_row_three')),
              findsOneWidget);
        },
      );

      testWidgets('If there is the sign in form on authentication page',
          (WidgetTester tester) async {
        await tester.pumpWidget(buildAuthenticationPage());
        await tester.pumpAndSettle();

        expect(find.byKey(const Key('authentication_sign_in_form')),
            findsOneWidget);
      });

      testWidgets(
        'If there is the sign in button on authentication page',
        (WidgetTester tester) async {
          await tester.pumpWidget(buildAuthenticationPage());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('authentication_sign_in_button')),
              findsOneWidget);
        },
      );
    },
  );
}
