import 'package:checkoff/data/repositories/repositories.dart';
import 'package:checkoff/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoriesProvider);
  return TaskNotifier(repository);
});
