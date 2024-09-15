import 'package:flutter/material.dart';
import 'package:kulmiye/widgets/buttons/button.dart';
import 'package:lottie/lottie.dart';

successDialogs(BuildContext context,
    {required String title, required String subTitle}) {
  return showDialog<void>(
    context: context,
    useSafeArea: true,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          height: 330,
          width: 390,
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.asset(
                'assets/animations/success.json',
                height: 150,
                width: 200,
              ),
              Text(
                title,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .color!
                          .withOpacity(0.8),
                      letterSpacing: 1.0,
                      wordSpacing: 1,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .color!
                          .withOpacity(0.7),
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: CustomButton(
                  onTap: () => Navigator.of(context).pop(),
                  title: "Done",
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
