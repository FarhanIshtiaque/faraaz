import 'package:faraaz/config/routes/app_pages.dart';
import 'package:faraaz/config/routes/app_routes.dart';
import 'package:faraaz/config/theme/app_theme.dart';
import 'package:faraaz/core/resource/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        // home: const LeaveRequest(),
        getPages: AppPages.pages,
        initialRoute: Routes.LAYOUT,
      ),
    );
  }
}

