import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  const AppShell({required this.child, super.key});
  final Widget child;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
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
          labelType: NavigationRailLabelType.all,
          elevation: 5,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.home_outlined),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.people_outline),
              label: Text('Members'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.event),
              label: Text('Event'),
            ),
          ],
        ),
        Expanded(child: widget.child),
      ],
    );
  }
}
