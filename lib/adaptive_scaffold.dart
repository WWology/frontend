import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:frontend/router.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  const AppShell({required this.child, super.key});
  final Widget child;

  int currentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location == '/') {
      return 0;
    } else if (location == '/members') {
      return 1;
    } else if (location == '/events') {
      return 2;
    } else {
      return -1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final int index = currentIndex(context);
    return AdaptiveScaffold(
      useDrawer: false,
      transitionDuration: const Duration(seconds: 0),
      selectedIndex: index,
      onSelectedIndexChange: (int index) {
        switch (index) {
          case 0:
            const HomeRoute().go(context);
          case 1:
            const MembersRoute().go(context);
          case 2:
            const EventsRoute().go(context);
        }
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.people_outlined),
          selectedIcon: Icon(Icons.people),
          label: "Members",
        ),
        NavigationDestination(
          icon: Icon(Icons.event),
          label: "Event",
        )
      ],
      body: (_) => child,
    );
  }
}
