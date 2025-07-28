import 'package:esay_doctor/core/routing/app_route.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}



