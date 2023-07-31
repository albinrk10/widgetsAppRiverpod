import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_albin/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarmode = ref.watch(isDarmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            icon: Icon(isDarmode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarmodeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selecterColorProvider);

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final color = colors[index];

          return RadioListTile(
              title: Text(
                'Este color',
                style: TextStyle(color: color),
              ),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: selectedColor,
              onChanged: (value) {
                //TODO: notificar el cambio
                ref.read(selecterColorProvider.notifier).state = index;
              });
        });
  }
}
