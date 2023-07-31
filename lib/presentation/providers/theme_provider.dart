import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Estado => isDarkmodeProvider =bolean
final isDarmodeProvider = StateProvider((ref) => false);

//un simple int
final selecterColorProvider = StateProvider((ref) => 0);

//un objeto  de tipo  AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado =new AppTheme ();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor:  colorIndex);
  }
}
