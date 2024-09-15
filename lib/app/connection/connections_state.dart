part of 'connections_cubit.dart';

@immutable
abstract class ConnectionsState {}

class ConnectionInitial extends ConnectionsState {}

class InternetConnected extends ConnectionsState {
  final ConnectivityResult connectionType;

  InternetConnected({required this.connectionType});
}

class InternetDisconnected extends ConnectionsState {}
