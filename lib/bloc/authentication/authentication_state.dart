part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final String userId;
  Authenticated(this.userId);
  @override
  List<Object> get props => [userId];
}

class AuthenticatedButNotSet extends AuthenticationState {
  final String userId;
  AuthenticatedButNotSet(this.userId);
  @override
  List<Object> get props => [userId];
}

class Unauthenticated extends AuthenticationState {}
