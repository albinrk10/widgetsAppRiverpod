import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_albin/presentation/providers/counter_provider.dart';

import '../../providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    //final bool isDarmode = ref.watch(isDarmodeProvider);
    final bool isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkmode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              // ref
              //     .read(isDarmodeProvider.notifier)
              //     .update((isDarmode) => !isDarmode);
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter ',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // ref.read(counterProvider.notifier).update((state) => state + 1);
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
