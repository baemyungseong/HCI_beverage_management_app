import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import views
import 'package:ui_fresh_app/views/wrapper/onboardingWrapper.dart';
import 'package:ui_fresh_app/views/authentication/signIn.dart';

//import others
import 'package:shared_preferences/shared_preferences.dart';

int initScreen = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = (preferences.getInt('initScreen') ?? 0);
  await preferences.setInt('initScreen', 1);
  runApp(FreshApp());
}

class FreshApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fresh',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          dialogBackgroundColor: Colors.white,
          primarySwatch: Colors.grey,
          cardColor: Colors.white70,
          accentColor: Colors.white,
        ),
        initialRoute:
            initScreen == 0 || initScreen == null ? 'onboarding' : 'signin',
        routes: {
          'onboarding': (context) => onboardingWrapper(),
          'signin': (context) => signInScreen(),
        },
    );
  }
}
