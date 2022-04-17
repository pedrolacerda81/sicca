import 'package:sicca/injection.dart';
import 'package:flutter/material.dart';
import 'package:sicca/core/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(const App());
}