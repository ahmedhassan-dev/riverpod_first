import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_first/base/providers/counter_provider.dart';

// ConsumerWidget is a [StatelessWidget] that can listen to providers.
// The whole widget will be rebuilt if there are any updates in provider
// So the solution here is using consumers above the widget we want to update it
// See lib\widget\counter_widget_with_consumer.dart

class CounterWidgetWithoutConsumer extends ConsumerWidget {
  const CounterWidgetWithoutConsumer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = ref.watch(counterProvider).value;
    // final counterStateNotifier = ref.watch(counterProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${ref.watch(counterProvider).value}',
            style: const TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () =>
                    ref.watch(counterProvider.notifier).decrement(),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  ref.watch(counterProvider.notifier).increment();
                  print("${ref.read(counterProvider).value}");
                  // setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
