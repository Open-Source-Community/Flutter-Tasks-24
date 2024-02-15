import 'package:flutter_riverpod/flutter_riverpod.dart';

final passwordVisibleProvider = StateProvider<bool>((ref) => true);
final confirmPasswordVisibleProvider = StateProvider<bool>((ref) => true);

final passwordNotifierProvider =
    StateNotifierProvider<PasswordNotifier, String>((_) {
  return PasswordNotifier();
});

class PasswordNotifier extends StateNotifier<String> {
  PasswordNotifier() : super('');

  void setPassword(String password) {
    state = password;
  }
}
