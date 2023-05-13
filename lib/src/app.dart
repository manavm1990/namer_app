import 'package:flutter/material.dart';
import 'package:namer_app/src/idea/idea.dart';
import 'package:namer_app/src/idea/idea_view.dart';
import 'package:namer_app/src/settings/settings_controller.dart';
import 'package:provider/provider.dart';

class NamerApp extends StatelessWidget {
  const NamerApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsController = context.watch<SettingsController?>();
    final idea = context.read<Idea>();

    return settingsController == null
        ? const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          )
        : MaterialApp(
            title: 'Namer App',
            theme: ThemeData.dark(useMaterial3: true),
            themeMode: settingsController.themeMode,
            home: IdeaView(idea: idea),
          );
  }
}
