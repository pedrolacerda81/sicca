import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const _Initial()) {
    on<SplashEvent>(
      (SplashEvent event, Emitter<SplashState> emit) async {
        await event.map(
          checkUserStatus: (checkUserStatusEvent) async {
            await Future.delayed(
              const Duration(seconds: 3),
              () => emit(const SplashState.userUnauthenticated()),
            );
          },
        );
      },
    );
  }
}
