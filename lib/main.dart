import 'package:flutter/material.dart';
import 'package:namer_app/src/app.dart';
import 'package:namer_app/src/idea/idea.dart';
import 'package:namer_app/src/settings/settings_controller.dart';
import 'package:namer_app/src/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  final idea = Idea();

  await settingsController.loadSettings();

  runApp(
    NamerApp(
      settingsController: settingsController,
      idea: idea,
    ), // NamerApp
  ); // runApp
}
