import 'package:flutter/material.dart';
import '../widgets/menuItem.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Divider(),
            MenuItem(
              icon: Icon(Icons.email),
              title: "Account Settings",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.credit_card),
              title: "Registered Cards",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.color_lens),
              title: "Themes",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.language),
              title: "Language",
              onTap: () {},
            ),
            Divider(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
