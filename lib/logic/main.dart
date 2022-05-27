import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:msnger/msnger.dart';
import 'package:nt4f04unds_widgets/nt4f04unds_widgets.dart';

final mainManagerProvider = Provider.autoDispose(
  (ref) {
    final manager = MainManager(
      ref.watch(apiManagerProvider),
      ref.watch(authManagerProvider),
    );
    ref.onDispose(manager.dispose);
    return manager;
  },
);

class MainManager {
  final Api _api;
  final AuthManager _authManager;

  MainManager(
    this._api,
    this._authManager,
  );

  Future<void> init() async {
    NFWidgets.init(routeObservers: []);
    _api.init();
    _authManager.init();
  }

  void dispose() {
    _api.dispose();
    _authManager.dispose();
  }
}
