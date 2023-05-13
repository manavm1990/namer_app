import 'package:flutter/material.dart';
import 'package:namer_app/src/app.dart';
import 'package:namer_app/src/idea/idea.dart';
import 'package:namer_app/src/settings/settings_controller.dart';
import 'package:namer_app/src/settings/settings_service.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        FutureProvider(
          create: (_) async {
            final settingsController = SettingsController(SettingsService());
            await settingsController.loadSettings();

            return settingsController;
          },
          initialData: null,
        ),
        Provider(create: (_) => Idea()),
      ],
      child: const NamerApp(),
    ),
  ); // runApp
}
