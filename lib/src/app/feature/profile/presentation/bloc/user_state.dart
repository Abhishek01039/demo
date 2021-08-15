part of 'user_bloc.dart';

/// State when user tries to fetch profile
class UserState extends Equatable {
  /// Constructor
  const UserState({
    this.status = UserStatus.isInitial,
    this.user,
  });

  /// user status
  final UserStatus status;

  /// Current user
  final User? user;

  /// Creates a copy of this [UserState] but with
  /// the given fields replaced with the new values.
  UserState copyWith({
    UserStatus? status,
    User? user,
  }) {
    return UserState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [status, user];
}

/// User status
enum UserStatus {
  /// User initial status
  isInitial,

  /// User success status
  isLoadedSuccess,

  /// User error status
  isLoadedError,
}
