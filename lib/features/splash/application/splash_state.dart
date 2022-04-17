part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.userUnauthenticated() = _UserUnauthenticated;
  const factory SplashState.userAuthenticated() = _UserAuthenticated;
}
