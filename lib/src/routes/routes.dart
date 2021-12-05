import 'package:flutter/material.dart';

//rutas
import 'package:app_bananafood/src/pages/welcome_page.dart';
import 'package:app_bananafood/src/pages/login_page.dart';
import 'package:app_bananafood/src/pages/sign_up.dart';
import 'package:app_bananafood/src/tabs/tabs_page.dart';
import 'package:app_bananafood/src/pages/forgot_password.dart';
import 'package:app_bananafood/src/pages/searchView.dart';
import 'package:app_bananafood/src/pages/google_maps.dart';

final routes = <String,WidgetBuilder>{
  'welcome' : ( BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'registro' : (BuildContext context) => SignUpPage(),
  'menumain' : (BuildContext context) => TabsPage(),
  'olvidocontraseña' : (BuildContext context) => ForgotPassword(),
  'search': (BuildContext context) => SearchPage(),
  'maps' : (BuildContext context) => Maps(),
};