import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/profile/domain/model/user.dart';
import 'package:demo/src/app/feature/profile/domain/usecases/get_user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

/// User BLoC Class for listen events of User features
class UserBloc extends Bloc<UserEvent, UserState> {
  /// Constructor
  UserBloc({required GetUser getUser})
      : _getUser = getUser,
        super(const UserState()) {
    /// Add intial event to [ProductBloc]
    add(GetUserEvent());
  }

  final GetUser _getUser;

  /// This method is used to listen streams of events.
  /// [UserState] holds state of User data
  /// [UserEvent] holds list of User events
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is GetUserEvent) {
      yield* _mapGetUserEventToState(event, state);
    }
  }

  Stream<UserState> _mapGetUserEventToState(
    GetUserEvent event,
    UserState state,
  ) async* {
    try {
      final user = await _getUser.call(NoParams());

      yield state.copyWith(
        status: UserStatus.isLoadedSuccess,
        user: user,
      );
    } on PlatformException {
      yield state.copyWith(status: UserStatus.isLoadedError);
    } catch (e) {
      yield state.copyWith(status: UserStatus.isLoadedError);
    }
  }
}
