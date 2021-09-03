
import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/splash/sign_in/sign_in.dart';
import 'package:shop_app/screens/splash/spalsh_screen.dart';

// named routes
//all our routes will be here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
