import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kulmiye/App/app_state_management.dart';

class BlocProviders extends StatefulWidget {
  final Widget child;

  const BlocProviders({super.key, required this.child});

  @override
  State<BlocProviders> createState() => _BlocProvidersState();
}

class _BlocProvidersState extends State<BlocProviders> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectionsCubit>(
          lazy: false,
          create: (BuildContext ctx) =>
              ConnectionsCubit(connectivity: Connectivity()),
        ),
      ],
      child: widget.child,
    );
  }
}
