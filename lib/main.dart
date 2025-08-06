import 'package:esay_doctor/core/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper/constants.dart';
import 'core/helper/shared_pref_helper.dart';
import 'doc_app.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter(),));
}



Future<void> checkIfLoggedInUser() async {
  final userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  isLoggedInUser = userToken != null && userToken.isNotEmpty;
}
