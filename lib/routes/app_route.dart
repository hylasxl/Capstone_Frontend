import 'package:flutter/cupertino.dart';
import 'package:syncio_capstone/screens/auth/register_avatar.dart';
import 'package:syncio_capstone/screens/auth/login_screen.dart';
import 'package:syncio_capstone/screens/auth/register_name_screen.dart';
import 'package:syncio_capstone/screens/auth/register_birthday.dart';
import 'package:syncio_capstone/screens/auth/register_gender.dart';
import 'package:syncio_capstone/screens/auth/register_email.dart';
import 'package:syncio_capstone/screens/auth/register_password.dart';
import 'package:syncio_capstone/screens/auth/register_username.dart';
import 'package:syncio_capstone/screens/home/homescreen.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return CupertinoPageRoute(builder: (context) => LoginScreen());
      case 'registerUsername':
        return CupertinoPageRoute(builder: (context)=> RegisterUsername());
      case 'registerName':
        return CupertinoPageRoute(builder: (context) => RegisterNameScreen());
      case 'registerBirthday':
        return CupertinoPageRoute(builder: (context) => RegisterBirthday());
      case 'registerGender':
        return CupertinoPageRoute(builder: (context) => RegisterGender());
      case 'registerEmail':
        return CupertinoPageRoute(builder: (context) => RegisterEmail());
      case 'registerPassword':
        return CupertinoPageRoute(builder: (context) => RegisterPassword());
      case 'homeScreen': 
        return CupertinoPageRoute(builder: (context)=>HomeScreen());
      case 'registerAvatar': 
        return CupertinoPageRoute(builder: (context)=> RegisterAvatar());
      default:
        return CupertinoPageRoute(builder: (context) => LoginScreen());

    }
  }
}
