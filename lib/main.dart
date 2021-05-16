import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/bloc/authentication/authentication_bloc.dart';
import 'package:tinder_clone/bloc/blocDelegate.dart';
import 'package:tinder_clone/repositories/userRepository.dart';
import 'package:tinder_clone/ui/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final UserRepository _userRepository = UserRepository();
  Bloc.observer = SimpleBlocObserver();
  runApp(BlocProvider(
      create: (context) => AuthenticationBloc(userRepository: _userRepository)
        ..add(AppStarted()),
      child: Home(userRepository: _userRepository)));
}
