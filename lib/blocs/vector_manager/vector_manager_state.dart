part of 'vector_manager_bloc.dart';

@immutable
abstract class VectorManagerState {
  const VectorManagerState();
}

class ManagerLoading extends VectorManagerState {
  final int count;
  final int total;
  const ManagerLoading(this.count, this.total);
}

class ManagerReady extends VectorManagerState {
  final VectorManager manager;
  const ManagerReady(this.manager);
}

class ManagerError extends VectorManagerState {
  final String message;
  const ManagerError(this.message);
}
