part of app.ui.auth;

class AuthState extends Equatable {
  final LoadingStatus loadingStatus;
  final AuthType type;
  final String error;

  const AuthState({
    this.loadingStatus = LoadingStatus.init,
    this.type = AuthType.login,
    this.error = '',
  });

  AuthState copyWith({
    LoadingStatus? loadingStatus,
    AuthType? type,
    String? error,
  }) {
    return AuthState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      type: type ?? this.type,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      loadingStatus,
      type,
      error,
    ];
  }
}
