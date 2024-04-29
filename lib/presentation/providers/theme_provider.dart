import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Colors list inmutable

final colorListProvider = Provider((ref) => colorList);

//an object typed AppTheme(custom)

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller or Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = New instance of AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColor(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
