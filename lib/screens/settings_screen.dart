// lib/screens/settings_screen.dart
import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDarkMode = false;

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
      if (_isDarkMode) {
        // Set Dark Theme
        WidgetsBinding.instance.platformDispatcher.onPlatformBrightnessChanged =
            () {};
      } else {
        // Set Light Theme
        WidgetsBinding.instance.platformDispatcher.onPlatformBrightnessChanged =
            () {};
      }
    });
    // Note: In a full project, you'd manage theme with Provider or Riverpod for dynamic change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: _isDarkMode,
                onChanged: _toggleTheme,
                activeColor: Colors.pinkAccent,
              ),
            ),
            Divider(),
            ListTile(title: Text('App Version'), subtitle: Text('1.0.0')),
          ],
        ),
      ),
    );
  }
}
