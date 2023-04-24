import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../bloc/settings/settings_cubit.dart';
import '../../localizations/localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SettingsCubit settings;

  askLogout() {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(AppLocalizations.of(context).getTranslate("logout")),
        content: Text(AppLocalizations.of(context).getTranslate("logout_confirm")),
        actions: [
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: Text(AppLocalizations.of(context).getTranslate("yes")),
            onPressed: () {
              settings.userLogout();
              Navigator.of(context).pop();
              GoRouter.of(context).replace('/welcome');
            },),
          CupertinoDialogAction(
            child: Text(AppLocalizations.of(context).getTranslate("no")),
            onPressed: () {
              Navigator.of(context).pop();
            },),
        ],
      ),
    );
  }

  @override
  void initState() {
    settings = context.read<SettingsCubit>();
    super.initState();
    if(settings.state.userLoggedIn) {

    }
    else {
      GoRouter.of(context).replace('/welcome');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          InkWell(
            onTap: () {
              askLogout();
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(Iconsax.logout),
            ),
          )
        ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name: ${settings.state.userInfo[0]}"),
          Text("Email: ${settings.state.userInfo[1]}"),
          Text("Phone: ${settings.state.userInfo[2]}"),
          Text("Token: ${settings.state.userInfo[3]}"),
        ]
      ));
  }
}
