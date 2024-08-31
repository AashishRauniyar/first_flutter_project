import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        ListTile(
          leading: Icon(Icons.palette),
          title: Text("Theme"),
        ),
        const Divider(),
        ListTile(
          leading: Icon(Icons.notification_add_outlined),
          title: Text("Notification"),
        ),
        const Divider(),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Privacy and Security"),
        ),
        const Divider(),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
        ),
      ],
    );
  }
}
