import 'package:demo/src/app/feature/profile/data/repository/profile_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final profileRepoImpl = ProfileRepoImpl();
  group('ProfileRepoImpl', () {
    test('ProfileRepoImpl - getUser should return current user', () async {
      final user = await profileRepoImpl.getUser();

      expect(user?.email, equals('janejones@gmail.com'));
      expect(user?.firstName, equals('Jane'));
      expect(user?.lastName, equals('Jones'));
    });
  });
}
