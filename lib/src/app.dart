import 'package:flutter/material.dart';
import 'package:namer_app/src/idea/idea.dart';
import 'package:namer_app/src/idea/idea_view.dart';
import 'package:namer_app/src/settings/settings_controller.dart';

class NamerApp extends StatelessWidget {
  const NamerApp({
    Key? key,
    required this.settingsController,
    required this.idea,
  }) : super(key: key);

  final SettingsController settingsController;
  final Idea idea;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Namer App',
        theme: ThemeData.dark(useMaterial3: true),
        home: IdeaView(idea: Idea()),
      );
}
