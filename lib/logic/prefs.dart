import 'package:msnger/msnger.dart';
import 'package:nt4f04unds_widgets/nt4f04unds_widgets.dart';

class Prefs {
  Prefs._();

  static final token = NullablePrefNotifier(NullableJsonPref<Token>(
    'token',
    fromJson: (json) => json == null
        ? null
        : Token.fromBuffer(
            List<int>.from(json as List),
          ),
    toJson: (token) => token?.writeToBuffer(),
  ));
}
