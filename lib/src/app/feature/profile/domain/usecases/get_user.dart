import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/profile/domain/model/user.dart';

import 'package:demo/src/app/feature/profile/domain/repositoty/profile_repo.dart';

/// UseCase for getting current user's information
class GetUser implements UseCase<User?, NoParams> {
  /// Constructor
  GetUser({required this.profileRepo});

  /// Instance of [ProfileRepo]
  final ProfileRepo profileRepo;

  @override
  Future<User?> call(NoParams noParams) {
    return profileRepo.getUser();
  }
}
