import 'package:go_router/go_router.dart';

import '../screens/home_screen.dart';
import '../screens/initial_screen.dart';
import '../screens/static_screens/about_screen.dart';
import '../screens/static_screens/contact_screen.dart';
import '../screens/static_screens/settings_screen.dart';
import '../screens/user/change_password_screen.dart';
import '../screens/user/forget_password_screen.dart';
import '../screens/user/login_screen.dart';
import '../screens/user/profile_screen.dart';
import '../screens/user/register_screen.dart';
import '../screens/user/welcome_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    // Loader Screen
    GoRoute(
      path: '/',
      builder: (context, state) => InitialScreen(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    // User Screens
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/change_password',
      builder: (context, state) => ChangePasswordScreen(),
    ),
    GoRoute(
      path: '/forget_password',
      builder: (context, state) => ForgetPasswordScreen(),
    ),

    // Static Screen
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => ContactScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);
