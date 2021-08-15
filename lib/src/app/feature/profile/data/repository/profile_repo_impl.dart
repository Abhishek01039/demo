import 'package:demo/src/app/feature/profile/data/dataresources/user_resource.dart';
import 'package:demo/src/app/feature/profile/domain/model/user.dart';
import 'package:demo/src/app/feature/profile/domain/repositoty/profile_repo.dart';

/// Implementation of [ProfileRepo]
class ProfileRepoImpl extends ProfileRepo {
  @override
  Future<User?> getUser() async {
    return user;
  }
}
