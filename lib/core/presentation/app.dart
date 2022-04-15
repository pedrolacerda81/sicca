import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:sicca/core/routes/router.dart';
import 'package:sicca/core/components/helpers/pallete.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Pallete.darkGrey,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      title: 'New Value',
      theme: ThemeData(
        primaryColor: Pallete.darkGrey,
        primarySwatch: Colors.deepPurple,
        // inputDecorationTheme: InputDecorationTheme(),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Pallete.darkPurple,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: routes,
    );
  }
}
