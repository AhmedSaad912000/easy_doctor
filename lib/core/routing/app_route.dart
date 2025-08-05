import 'package:esay_doctor/core/routing/routes.dart';
import 'package:esay_doctor/features/home/logic/home_bloc.dart';
import 'package:esay_doctor/features/login/logic/login_bloc.dart';
import 'package:esay_doctor/features/login/ui/login.dart';
import 'package:esay_doctor/features/sign_up/logic/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/logic/home_event.dart';
import '../../features/home/ui/home.dart';
import '../../features/onboarding/ui/on_boarding.dart';
import '../../features/sign_up/ui/sign_up.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route ?generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen(),);
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) =>BlocProvider(create: (context) => getIt<LoginBloc>(), child: LoginScreen(),
            ),);
        case Routes.signUpScreen:
        return MaterialPageRoute(builder: (context) =>BlocProvider(create: (context) => getIt<SignUpBloc>(), child: SignUpScreen(),
            ),);
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => BlocProvider(
          create: (context) => HomeBloc(getIt())..add(HomeEvent.getSpecializations()),
            child: HomeScreen()),);
      default:
        return null;
    }
  }
}