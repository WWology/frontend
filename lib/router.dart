import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Relative
import 'adaptive_scaffold.dart';
import 'events/events.dart';
import 'home/home.dart';
import 'members/members.dart';

part 'router.g.dart';

@TypedShellRoute<AppShellRoute>(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<HomeRoute>(path: '/'),
  TypedGoRoute<MembersRoute>(path: '/members'),
  TypedGoRoute<EventsRoute>(path: '/events'),
])
class AppShellRoute extends ShellRouteData {
  const AppShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return AppShell(child: navigator);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const HomePage(),
      transitionDuration: const Duration(milliseconds: 0),
      transitionsBuilder: (_, __, ___, child) => child,
    );
  }
}

class MembersRoute extends GoRouteData {
  const MembersRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const MembersPage(),
      transitionDuration: const Duration(milliseconds: 0),
      transitionsBuilder: (_, __, ___, child) => child,
    );
  }
}

class EventsRoute extends GoRouteData {
  const EventsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const EventsPage(),
      transitionDuration: const Duration(milliseconds: 0),
      transitionsBuilder: (_, __, ___, child) => child,
    );
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SignInScreen(
      providers: [
        EmailAuthProvider(),
        GoogleProvider(
          clientId:
              '335770504017-t6ve7t29a5tb5sss6l4qrdha7ulq81u5.apps.googleusercontent.com',
        )
      ],
      actions: [
        AuthStateChangeAction<SignedIn>(
          (context, state) {
            const HomeRoute().go(context);
          },
        ),
      ],
    );
  }
}
