import 'package:bloc_test/bloc_test.dart';
import 'package:demo/src/app/feature/profile/data/repository/profile_repo_impl.dart';
import 'package:demo/src/app/feature/profile/domain/usecases/get_user.dart';
import 'package:demo/src/app/feature/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/user_mock.dart';

class MockProfileRepoImpl extends Mock implements ProfileRepoImpl {}

void main() {
  group('UserBloc test', () {
    blocTest<UserBloc, UserState>(
      'emits '
      '[UserState(status: UserStatus.isLoadedSuccess, user: currentUser)] '
      'when user tries to fetch product list',
      build: () {
        final mockProfileRepoImpl = MockProfileRepoImpl();
        when(
          mockProfileRepoImpl.getUser,
        ).thenAnswer((invocation) => Future.value(currentUser));
        return UserBloc(getUser: GetUser(profileRepo: mockProfileRepoImpl));
      },
      expect: () => [
        UserState(status: UserStatus.isLoadedSuccess, user: currentUser),
      ],
    );

    blocTest<UserBloc, UserState>(
      'emits [UserState.loading(), UserState.success()] when user tries '
      'to fetch product list and get the null',
      build: () {
        final mockProfileRepoImpl = MockProfileRepoImpl();
        when(
          mockProfileRepoImpl.getUser,
        ).thenAnswer((invocation) => Future.value(null));
        return UserBloc(getUser: GetUser(profileRepo: mockProfileRepoImpl));
      },
      expect: () => [
        const UserState(status: UserStatus.isLoadedSuccess),
      ],
    );

    blocTest<UserBloc, UserState>(
      'emits [UserState.loading(), UserState.failure()] if Exception occurs '
      'while user tries to fetch product list',
      build: () {
        final mockProfileRepoImpl = MockProfileRepoImpl();
        when(
          mockProfileRepoImpl.getUser,
        ).thenThrow('Something went wrong');
        return UserBloc(getUser: GetUser(profileRepo: mockProfileRepoImpl));
      },
      expect: () => [
        const UserState(status: UserStatus.isLoadedError),
      ],
    );

    blocTest<UserBloc, UserState>(
      'emits [UserState.loading(), UserState.failure()] if PlatformException occurs '
      'while user tries to fetch product list',
      build: () {
        final mockProfileRepoImpl = MockProfileRepoImpl();
        when(
          mockProfileRepoImpl.getUser,
        ).thenThrow(PlatformException(code: 'Something went wrong'));
        return UserBloc(getUser: GetUser(profileRepo: mockProfileRepoImpl));
      },
      expect: () => [
        const UserState(status: UserStatus.isLoadedError),
      ],
    );
  });
}
