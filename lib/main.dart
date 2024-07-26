import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getxproject/pages/MyHomePage.dart';
import 'package:getxproject/pages/about_page.dart';
import 'package:getxproject/pages/send_otp_screen.dart';
import 'package:getxproject/preferences/local_preferences.dart';
import 'package:getxproject/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  await LocalStorageUtils.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FireBaseAPI().initNotifcation();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _goRouter = Routes();

    return GetMaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: _goRouter.router.routeInformationParser,
      routerDelegate: _goRouter.router.routerDelegate,
      routeInformationProvider: _goRouter.router.routeInformationProvider,
    );
  }
}
