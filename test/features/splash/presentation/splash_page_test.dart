import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sicca/features/splash/application/splash_bloc.dart';
import 'package:sicca/features/splash/presentation/splash_listview.dart';

class FakeSplashBloc extends Fake implements SplashBloc {}

void main() {
  BlocProvider buildSplashPage() {
    return BlocProvider<SplashBloc>(
      create: (_) => FakeSplashBloc(),
      child: const GetMaterialApp(
        home: Scaffold(
          body: SplashListView(),
        ),
      ),
    );
  }

  group(
    'Splash Page Widget Test Group',
    () {
      testWidgets(
        'If there is the correct image on the splash screen',
        (WidgetTester tester) async {
          await tester.pumpWidget(buildSplashPage());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('splash_image')), findsOneWidget);
        },
      );

      testWidgets(
        'If there is the correct title on the splash screen',
        (WidgetTester tester) async {
          await tester.pumpWidget(buildSplashPage());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('splash_title_row_one')), findsOneWidget);
          expect(find.byKey(const Key('splash_title_row_two')), findsOneWidget);
          expect(find.byKey(const Key('splash_version_row')), findsOneWidget);
        },
      );
    },
  );
}
