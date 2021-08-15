import 'package:constant/constant.dart';
import 'package:demo/src/app/feature/profile/domain/model/user.dart';
import 'package:demo/src/app/feature/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'theme_switch.dart';

/// Block with User Profile Information and Images
class ProfileDetails extends StatelessWidget {
  /// Constructor
  const ProfileDetails({
    Key? key,
    this.user,
  }) : super(key: key);

  /// user
  final User? user;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final coverPictureHeight = size.height * .30;
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              child: Hero(
                tag: 'cover-profile-key',
                child: Container(
                  width: size.width,
                  height: coverPictureHeight,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    image: const DecorationImage(
                      image: AssetImage(ImageConstant.userCoverImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const _ProfileInformation(),
            ListTile(
              title: Text(
                'Dark Mode',
                style: Theme.of(context).textTheme.headline4,
              ),
              trailing: const ThemeSwitch(),
            ),
          ],
        ),
        _UserAvatar(
          coverPictureHeight: coverPictureHeight,
        ),
      ],
    );
  }
}

/// User Photo Profile
class _UserAvatar extends StatelessWidget {
  const _UserAvatar({
    Key? key,
    required this.coverPictureHeight,
  }) : super(key: key);

  final double coverPictureHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned.fill(
      top: coverPictureHeight * .7,
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Hero(
            tag: 'profile-hero-key',
            child: Container(
              width: size.width * .25,
              height: size.width * .25,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(80),
                color: Colors.grey[300],
                image: const DecorationImage(
                  image: AssetImage(ImageConstant.userProfileImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// User profile data
class _ProfileInformation extends StatelessWidget {
  const _ProfileInformation({
    Key? key,
    this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.status == UserStatus.isLoadedError) {
          return const Text(
            'Can not get profile',
          );
        }
        return AnimatedOpacity(
          opacity: state.user != null ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            '${state.user?.firstName ?? ''} '
                            '${state.user?.lastName ?? ''}',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            user?.email ?? '',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(state.user?.email ?? ''),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icon/location-point.svg',
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              const SizedBox(width: 7.5),
                              Text(
                                'Germany',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
