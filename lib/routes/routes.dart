import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

export 'login_route.dart';

import 'login_route.dart';

final goRouterProvider = Provider((ref) => GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const LoginRoute(),
    ),
    GoRoute(
      path: '/page2',
      builder: (BuildContext context, GoRouterState state) => const Page2Screen(),
    ),
  ],
  redirect: (state) {
      // if the user is not logged in, they need to login
      final loggedIn = loginInfo.loggedIn;
      final loggingIn = state.subloc == '/login';
      if (!loggedIn) return loggingIn ? null : '/login';

      // if the user is logged in but still on the login page, send them to
      // the home page
      if (loggingIn) return '/';

      // no need to redirect at all
      return null;
  },
));
