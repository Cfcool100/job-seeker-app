import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<ToggleAuthScreenEvent>((event, emit) {
      if (kDebugMode) {
        print('state value: ${!state.isLogScreen}');
        print('state : $state');
      }
      emit(ToggleAuthScreen(isLogScreen: !state.isLogScreen));
    });
  }
}
