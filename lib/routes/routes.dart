import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:msnger/logic/auth.dart';

export 'home_route.dart';
export 'login_route.dart';

import 'home_route.dart';
import 'login_route.dart';

final goRouterProvider = Provider(
  (ref) {
    final authState = ref.watch(authStateProvider.notifier);

    final router = GoRouter(
      initialLocation: '/login',
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const HomeRoute(),
        ),
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) =>
              const LoginRoute(),
        ),
      ],
      redirect: (state) {
        final loggedIn = authState.loggedIn;
        final loggingIn = state.subloc == '/login';
        if (loggedIn && loggingIn) {
          return '/';
        }
        if (!loggedIn && !loggingIn) {
          return '/login';
        }
        return null;
      },
    );

    authState.addListener((state) {
      if (authState.loggedIn) {
        router.go('/');
      } else {
        router.go('/login');
      }
    });

    return router;
  },
);
