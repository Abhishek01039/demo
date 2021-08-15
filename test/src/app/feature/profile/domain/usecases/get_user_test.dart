import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/profile/data/repository/profile_repo_impl.dart';
import 'package:demo/src/app/feature/profile/domain/usecases/get_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../../../mock_resource/user_mock.dart';

class MockProfileRepoImpl extends Mock implements ProfileRepoImpl {}

void main() {
  group('GetUser test', () {
    test('GetUser - call should return list of cart product', () async {
      final mockProfileRepoImpl = MockProfileRepoImpl();

      when(
        mockProfileRepoImpl.getUser,
      ).thenAnswer((_) => Future.value(currentUser));

      final getCart = GetUser(profileRepo: mockProfileRepoImpl);

      final user = await getCart.call(NoParams());

      expect(user?.email, equals('janejones@gmail.com'));
      verify(mockProfileRepoImpl.getUser).called(1);
    });
  });
}
