import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sicca/features/splash/application/splash_bloc.dart';
import 'package:sicca/features/splash/presentation/splash_listview.dart';

class FakeSplashBloc extends Fake implements SplashBloc {}

main() {
  group('Splash Bloc Test Group -->', () {
  BlocProvider buildSplashPage() {
    return BlocProvider<FakeSplashBloc>(
      create: (_) => FakeSplashBloc(),
      child: const GetMaterialApp(
        home: Scaffold(
          body: SplashListView(),
        ),
      ),
    );
  }

    testWidgets(
        'If the CheckUserStatus event was called when SplashScreen is open',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildSplashPage());
      await tester.pumpAndSettle();
      // expect(,);
    });
  });
}
