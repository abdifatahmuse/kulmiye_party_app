import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'connections_state.dart';

class ConnectionsCubit extends Cubit<ConnectionsState> {
  final Connectivity connectivity;
  StreamSubscription? connectivityStreamSubscription;

  ConnectionsCubit({required this.connectivity}) : super(ConnectionInitial()) {
    monitorInternetConnection();
  }

  Future<StreamSubscription<List<ConnectivityResult>>>
      monitorInternetConnection() async {
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      for (var connectivity in connectivityResult) {
        if (connectivity == ConnectivityResult.wifi ||
            connectivity == ConnectivityResult.mobile) {
          return emit(InternetConnected(connectionType: connectivity));
        } else {
          if (connectivity == ConnectivityResult.none) {
            emit(InternetDisconnected());
            return emit(InternetConnected(connectionType: connectivity));
          } else {
            return emit(InternetConnected(connectionType: connectivity));
          }
        }
      }
    });
  }

  Future<bool> connectivityCheck() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    //  REVIEW: this is a new update, check if the working correctly
    if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
      emit(InternetConnected(connectionType: ConnectivityResult.ethernet));
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
      emit(InternetConnected(connectionType: ConnectivityResult.vpn));
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
      emit(InternetConnected(connectionType: ConnectivityResult.bluetooth));
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.

      emit(InternetConnected(connectionType: ConnectivityResult.other));
      emit(InternetDisconnected());
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      // No available network types
      emit(InternetConnected(connectionType: ConnectivityResult.none));
      emit(InternetDisconnected());
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.mobile)) {
      emit(InternetConnected(connectionType: ConnectivityResult.mobile));
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      // Wi-fi is available.
      // Note for Android:
      // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
      emit(InternetConnected(connectionType: ConnectivityResult.wifi));

      return true;
    }

    return false;
  }

  @override
  Future<void> close() {
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
