import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_first/models_or_states/counter.dart';

class CounterStateNotifier extends StateNotifier<Counter> {
  CounterStateNotifier(super.state);

  void increment() {
    state = state.copyWith(value: state.value + 1);
  }

  void decrement() {
    state = state.copyWith(value: state.value - 1);
  }
}
