import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_first/base/providers/counter_provider.dart';
import 'package:riverpod_first/widget/counter_widget_without_consumer.dart';

int x = 0;

class CounterWidgetWithConsumer extends StatelessWidget {
  const CounterWidgetWithConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    // final count = ref.watch(counterProvider).value;
    // final counterStateNotifier = ref.watch(counterProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "${x++}"), //We couldn't rebuild this because it's out of the consumer widget
        Consumer(
          builder: (_, ref, __) => Column(
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
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CounterWidgetWithoutConsumer()),
                      ),
                  child: const Text("CounterWidgetWithoutConsumer"))
            ],
          ),
        ),
      ],
    );
  }
}
