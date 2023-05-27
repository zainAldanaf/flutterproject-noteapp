import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pageState();
  }
}

class pageState extends State<StatefulWidget> {
  bool _notificationsEnabled = true;
  bool _TandC = true;
  bool _HelpCenter = true;
  bool isDark = false;

  @override
  Widget build (BuildContext context) {
    return
    Theme(
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Appearance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
              },
            ),

            const SizedBox(height: 16),
            const Text(
              'Term & Conditions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Read and accept'),
              value: _TandC,
              onChanged: (value) {
                setState(() {
                  _TandC = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Help Center',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Read and accept'),
              value: _HelpCenter,
              onChanged: (value) {
                setState(() {
                  _HelpCenter = value;
                });
              },
            ),

          ],

        ),
      ),
      )
    );
  }
}