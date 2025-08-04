import 'package:esay_doctor/core/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/di/dependency_injection.dart';
import 'doc_app.dart';
void main() async{
  await setupGetIt();
  runApp(DocApp(appRouter: AppRouter(),));
}



