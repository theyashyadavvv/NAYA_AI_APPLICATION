// import 'package:ai_assistant/screen/splash_screen.dart';
import 'package:ai_assistant/helper/global.dart';
// import 'package:ai_assistant/helper/pref.dart';
// import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized() ensures  fundamental parts of Flutter that are necessary for the app to function properly.
  WidgetsFlutterBinding.ensureInitialized();
//  await - pause the execution of a function until a Future completes and returns a result.

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
          titleTextStyle: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
        )),
        home: const SplashScreen());
  }
}
