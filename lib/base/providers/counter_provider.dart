import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_first/models_or_states/counter.dart';
import 'package:riverpod_first/view_models/view_model.dart';

final counterProvider = StateNotifierProvider<CounterStateNotifier, Counter>(
  (ref) => CounterStateNotifier(const Counter(0)),
);
