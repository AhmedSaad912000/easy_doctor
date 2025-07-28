import 'package:esay_doctor/core/routing/routes.dart';
import 'package:esay_doctor/features/login/logic/login_bloc.dart';
import 'package:esay_doctor/features/login/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home.dart';
import '../../features/onboarding/ui/on_boarding.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen(),);
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) =>BlocProvider(create: (context) => getIt<LoginBloc>(), child: LoginScreen(

        ),
            ),);
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      default:
        return MaterialPageRoute(
          builder: (context) => Text("No Route Defined for ${settings.name}"),);
    }
  }
}