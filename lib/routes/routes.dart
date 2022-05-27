import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:msnger/logic/auth.dart';
import 'package:msnger/routes/chat_route.dart';

export 'home_route.dart';
export 'login_route.dart';

import 'home_route.dart';
import 'login_route.dart';

final goRouterProvider = Provider(
  (ref) {
    final authState = ref.watch(authStateProvider.notifier);

    late final GoRouter router;
    router = GoRouter(
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
        GoRoute(
          path: '/chat/:chatId',
          builder: (BuildContext context, GoRouterState state) {
            final chatId = state.params['chatId'];
            if (chatId == null) {
              router.pop();
              return const SizedBox.shrink();
            }
            return ChatRoute(chatId: chatId);
          },
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
