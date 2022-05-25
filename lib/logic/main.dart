import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:msnger/msnger.dart';

final mainManagerProvider = Provider.autoDispose(
  (ref) {
    final manager = MainManager(
      ref.watch(apiManagerProvider),
    );
    ref.onDispose(manager.dispose);
    return manager;
  },
);

class MainManager {
  final Api _api;

  MainManager(this._api);

  void init() {
    _api.init();
  }

  void dispose() {
    _api.dispose();
  }
}
