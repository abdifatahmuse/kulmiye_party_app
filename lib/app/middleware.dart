import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kulmiye/main_paths.dart';

class BlocMiddleware extends StatelessWidget {
  final Widget child;

  const BlocMiddleware({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // Internet Connection
        BlocListener<ConnectionsCubit, ConnectionsState>(
          bloc: BlocProvider.of<ConnectionsCubit>(context),
          listener: (context, state) {
            if (state is InternetConnected &&
                state.connectionType == ConnectionType.wifi) {
              // have Wifi connection

              ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
                context: context,
                tag: "Connectivity",
                title: "Connected to Internet",
                description: "Without the internet, the app doest work with it",
                type: ESnackBarStatus.success,
              ));
            } else if (state is InternetConnected &&
                state.connectionType == ConnectionType.mobile) {
              // have mobile data
            } else if (state is InternetConnected &&
                state.connectionType == ConnectionType.mobile) {
              // have mobile data
            } else if (state is InternetConnected &&
                state.connectionType == ConnectionType.vpn) {
              // have mobile data
              ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
                context: context,
                tag: "Connectivity",
                title: "We are not allow to use VPN's",
                description:
                    "Turn off the VPN connection, we will be able to use the app",
                type: ESnackBarStatus.error,
              ));
            } else if (state is InternetConnected &&
                state.connectionType == ConnectionType.none) {
              // None Connection
              ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
                context: context,
                tag: "Connectivity",
                title: "No Internet, Connect Network or Wireless",
                description: "Without the internet, the app doest work with it",
                type: ESnackBarStatus.error,
              ));
            } else if (state is InternetDisconnected) {
              //
            }
          },
        ),
      ],
      child: child,
    );
  }
}
