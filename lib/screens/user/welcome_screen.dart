import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../localizations/localizations.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/login');
                  },
                  child:
                      Text(AppLocalizations.of(context).getTranslate('login')),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/register');
                  },
                  child: Text(
                      AppLocalizations.of(context).getTranslate('register')),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).replace('/home');
            },
            child: Text(
                AppLocalizations.of(context).getTranslate('continue_no_user')),
          ),
        ],
      ),
    );
  }
}
