import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/bloc/authentication/authentication_bloc.dart';
import 'package:tinder_clone/repositories/userRepository.dart';
import 'package:tinder_clone/ui/pages/login.dart';
import 'package:tinder_clone/ui/pages/profile.dart';
import 'package:tinder_clone/ui/widgets/tabs.dart';
import 'splash.dart';

class Home extends StatelessWidget {
  final UserRepository _userRepository;

  Home({@required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return Splash();
          }
          if (state is Authenticated) {
            return Tabs(userId: state.userId);
          }
          if (state is AuthenticatedButNotSet) {
            return Profile(
              userRepository: _userRepository,
              userId: state.userId,
            );
          }
          if (state is Unauthenticated) {
            return Login(
              userRepository: _userRepository,
            );
          } else
            return Container();
        },
      ),
    );
  }
}
