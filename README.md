# riverpod_first

1. Add flutter_riverpod package.
2. Create models.dart file and add copyWith method --> ex. Counter class.
3. Create StateNotifier Class this represent the view model(it's like the cubit file in bloc lib)
   --> ex. CounterStateNotifier class.
4. Create provider file and add for ex. -->
   final counterProvider = StateNotifierProvider<CounterStateNotifier, Counter>(
   (ref) => CounterStateNotifier(const Counter(0)),
   );
5. Wrap the MyApp widget with the ProviderScope in main.dart like ---> runApp(
   ProviderScope(
   child: MyApp(),
   ),
   );
6. Now you can build any widget you want and use the provider to access the data
   for more details see ---> lib\widget\counter_widget_with_consumer.dart
   and ---> lib/widget/counter_widget_without_consumer.dart
