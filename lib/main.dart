import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'msnger.dart';

void main() {
  runApp(ProviderScope(
    child: Builder(builder: (context) => const App()),
  ));
}

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final mainManager = ref.watch(mainManagerProvider);
    useEffect(() {
      mainManager.init();
      return null;
    }, const []);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: appTheme,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
    );
  }
}
