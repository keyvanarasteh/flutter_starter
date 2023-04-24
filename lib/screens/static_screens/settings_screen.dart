import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/settings/settings_cubit.dart';
import '../../localizations/localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final SettingsCubit settings;

  @override
  void initState() {
    settings = context.read<SettingsCubit>();
    super.initState();
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(
            AppLocalizations.of(context).getTranslate('language_selection')),
        message: Text(
            AppLocalizations.of(context).getTranslate('language_selection2')),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              settings.changeLanguage("tr");
              Navigator.pop(context);
            },
            child: const Text('Turkce'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              settings.changeLanguage("en");
              Navigator.pop(context);
            },
            child: const Text('English'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context).getTranslate('cancel')),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).getTranslate('settings')),
      ),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                _showActionSheet(context);
              },
              child: Text(
                  '${AppLocalizations.of(context).getTranslate('language')} : ${settings.state.language}')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '${AppLocalizations.of(context).getTranslate('darkMode')}: '),
              Switch(
                value: settings.state.darkMode,
                onChanged: (value) {
                  settings.changeDarkMode(value);
                },
              )
            ],
          ),
          Divider(),
          ElevatedButton(
            child: Text('Hello World'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
