import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text("YAM"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Overview'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Members'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Events'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
