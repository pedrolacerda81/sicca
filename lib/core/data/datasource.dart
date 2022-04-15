import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

class Datasource {
  /// Change the environment here;
  static const Environment environment = Environment(Environment.dev);
  final Dio dio = Dio();
  Datasource._({required Environment environment}) {
    if (environment == dev || environment == test) {
      dio.options.baseUrl = ''; // add api dev env base url here;
    } else if (environment == prod) {
      dio.options.baseUrl = ''; // add api prod env base url here;
    }
  }
  static final Datasource _instance = Datasource._(environment: environment);
  static Datasource get instance => _instance;
}
