part of 'user_bloc.dart';

/// All events of User Services

@immutable
abstract class UserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// User tried to fetch the user
class GetUserEvent extends UserEvent {}
