import 'package:esay_doctor/core/routing/routes.dart';
import 'package:esay_doctor/features/login/ui/login.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/ui/on_boarding.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen(),);

    case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen(),);
      default:
        return MaterialPageRoute(builder: (context) =>Text("No Route Defind for ${settings.name}"),);
    }


  }
}