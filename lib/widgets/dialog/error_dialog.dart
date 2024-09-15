import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/widgets/buttons/button.dart';
import 'package:lottie/lottie.dart';

errorDialogs(BuildContext context,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.asset(
                'assets/animations/error.json',
                height: 150,
                width: 200,
              ),
              Text(
                title,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: blueDark,
                  fontSize: 21,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w600,
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
                style: TextStyle(
                  color: blueDark.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  wordSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                // height: 50,
                child: CustomButton(
                  onTap: () => Navigator.of(context).pop(true),
                  title: "Dismiss",
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
