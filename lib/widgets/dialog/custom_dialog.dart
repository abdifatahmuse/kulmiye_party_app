import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';

Size? size;
customDialog(
  BuildContext context, {
  bool? useSafeArea,
  bool? barrierDismissible,
  bool? useRootNavigator,
  bool? scrollable,
}) {
  size = MediaQuery.sizeOf(context);

  return showDialog<void>(
    context: context,
    useSafeArea: useSafeArea ?? true,
    barrierDismissible: barrierDismissible ?? true,
    useRootNavigator: useRootNavigator ?? false,
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: scrollable ?? true,
        content: Container(
          height: 390,
          width: size!.width - 20,
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.close_rounded,
                    ),
                    Text(
                      "Dahabshiil",
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: blueDark,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Powered by',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w300,
                            color: blueDark.withOpacity(0.7),
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo/large_logo.png',
                      height: 95,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    },
  );
}
