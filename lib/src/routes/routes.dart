import 'package:flutter/material.dart';
import 'package:flutter_chat/src/pages/chat_pages.dart';
import 'package:flutter_chat/src/pages/loading_page.dart';
import 'package:flutter_chat/src/pages/login_page.dart';
import 'package:flutter_chat/src/pages/register_page.dart';
import 'package:flutter_chat/src/pages/users_page.dart';

class AppRoutes {
  static const String usersRoute = 'users';
  static const String chatRoute = 'chat';
  static const String loginRoute = 'login';
  static const String registerRoute = 'register';
  static const String loadingRoute = 'loading';

  static final Map<String, Widget Function(BuildContext)> routes = {
    usersRoute: (_) => const UsersPage(),
    chatRoute: (_) => const ChatPage(),
    loginRoute: (_) => const LoginPage(),
    registerRoute: (_) => const RegisterPage(),
    loadingRoute: (_) => const LoadingPage(),
  };
}
