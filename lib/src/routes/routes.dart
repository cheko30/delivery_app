import 'package:flutter/material.dart';

// Pages
import 'package:delivery_app/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery_app/src/features/presentation/forgot_pasword_page/View/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';

final routes = <String, WidgetBuilder> {

  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),

};