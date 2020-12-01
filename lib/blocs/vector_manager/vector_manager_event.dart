part of 'vector_manager_bloc.dart';

@immutable
abstract class VectorManagerEvent {}

class InitializeManager extends VectorManagerEvent {
  final List<String> names;

  InitializeManager(this.names);
}
