import 'package:demo/src/app/feature/profile/domain/model/user.dart';

/// blue print of [ProfileRepo]
abstract class ProfileRepo {
  /// Fetch user
  Future<User?> getUser();
}
