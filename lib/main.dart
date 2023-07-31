import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_albin/config/theme/app_theme.dart';
import 'package:widgets_albin/presentation/providers/theme_provider.dart';
import 'config/router/app_routter.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final bool isDarkmode = ref.watch(isDarmodeProvider);
    // final int  selectesColor = ref.watch(selecterColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // theme: AppTheme(selectedColor: selectesColor, isDarkmode: isDarkmode)
      //     .getTheme(),
      theme: appTheme.getTheme(),
    );
  }
}
