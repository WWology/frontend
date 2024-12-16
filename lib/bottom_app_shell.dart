import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomAppShell extends StatefulWidget {
  const BottomAppShell({super.key});

  @override
  State<BottomAppShell> createState() => _AppShellState();
}

class _AppShellState extends State<BottomAppShell> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
          if (index == 0) {
            context.go('/');
          } else if (index == 1) {
            context.go('/members');
          } else if (index == 2) {
            context.go('/events');
          }
        });
      },
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 5,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.people_outlined),
          label: "Members",
        ),
        NavigationDestination(
          icon: Icon(Icons.event),
          label: "Event",
        )
      ],
    );
  }
}
