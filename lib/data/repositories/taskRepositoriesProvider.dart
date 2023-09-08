import 'package:checkoff/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoriesProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.read(taskDatasourceProvider);
  return TaskRepositoriesImpl(datasource);
});
