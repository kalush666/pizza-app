part of 'authentication_bloc.dart';

enum AuthenticationStatus { Authenticated, Unauthenticated, Unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.Unknown,
    this.user,
  });

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser user)
    : this._(status: AuthenticationStatus.Authenticated, user: user);
  const AuthenticationState.unauthenticated()
    : this._(status: AuthenticationStatus.Unauthenticated);
  @override
  List<Object?> get props => [user];
}
