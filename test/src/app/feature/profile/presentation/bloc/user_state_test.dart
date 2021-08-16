import 'package:demo/src/app/feature/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../mock_resource/user_mock.dart';

void main() {
  group('UserState test', () {
    test('supports value comparisons with empty values', () {
      expect(
        const UserState(),
        const UserState(),
      );
    });

    test('supports value comparisons', () {
      expect(
        UserState(user: currentUser),
        UserState(user: currentUser),
      );
    });

    test('supports value comparisons with different values', () {
      expect(UserState(status: UserStatus.isLoadedSuccess, user: currentUser),
          isNot(UserState(user: currentUser)));
    });

    test('copyWith', () {
      var userState = const UserState(status: UserStatus.isLoadedSuccess);
      userState = userState.copyWith(status: UserStatus.isLoadedError);

      expect(userState.status, UserStatus.isLoadedError);
    });

    test('copyWith with empty object', () {
      var userState = const UserState(status: UserStatus.isLoadedSuccess);
      userState = userState.copyWith();

      expect(userState.status, UserStatus.isLoadedSuccess);
    });
  });
}
