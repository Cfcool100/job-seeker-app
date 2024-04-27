part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState({
    required this.isLogScreen,
  });

  final bool isLogScreen;

  @override
  List<Object> get props => [isLogScreen];
}

final class AuthInitial extends AuthState {
  const AuthInitial() : super(isLogScreen: true);
}

final class ToggleAuthScreen extends AuthState {
  const ToggleAuthScreen({required super.isLogScreen});
}
