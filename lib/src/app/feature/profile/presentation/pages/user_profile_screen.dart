import 'package:demo/src/app/core/widgets/snackbar_widget.dart';
import 'package:demo/src/app/feature/profile/domain/model/user.dart';
import 'package:demo/src/app/feature/profile/domain/usecases/get_user.dart';
import 'package:demo/src/app/feature/profile/presentation/bloc/user_bloc.dart';
import 'package:demo/src/app/feature/profile/presentation/widgets/profile_details.dart';
import 'package:demo/src/injection/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget for User Profile Screen
class UserProfileScreen extends StatelessWidget {
  /// Constructor
  const UserProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(getUser: getIt<GetUser>()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status == UserStatus.isLoadedError) {
          /// Show error snackbar
          showSnackbar(context: context, text: 'Something went wrong');
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: _ProfileAppBar(),
          ),
          body: _ProfileBody(user: state.user),
        );
      },
    );
  }
}

/// Content of [UserProfileScreen]
class _ProfileBody extends StatelessWidget {
  const _ProfileBody({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return ProfileDetails(user: user);
  }
}

/// User Profile Screen AppBar
class _ProfileAppBar extends StatelessWidget {
  const _ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:
          IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
      centerTitle: true,
      title: Text(
        'Profile',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
