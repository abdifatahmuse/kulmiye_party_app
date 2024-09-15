import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';
import 'package:kulmiye/widgets/widgets.dart';

class ListsCardInfo extends StatelessWidget {
  final String name;
  final String status;
  final String descriptionOne;
  final String? descriptionTwo;
  final String createdAt;
  // final String createdAt;
  final String? urlImage;

  final VoidCallback actions;
  final VoidCallback onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const ListsCardInfo({
    super.key,
    required this.name,
    required this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.urlImage,
    this.descriptionTwo,
    required this.descriptionOne,
    required this.createdAt,
    required this.status,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        height: context.screenSize.width / 5,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(
          left: 5.0,
          right: 10.0,
          top: 3.0,
          bottom: 5.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: borderRadiusGeometry,
          // border: Border.all(
          //   width: 2,
          //   style: BorderStyle.solid,
          //   color: primary.withOpacity(0.3),
          // ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).cardTheme.shadowColor!,
              offset: const Offset(1.0, 1.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Image
            Container(
              height: context.screenSize.width / 7,
              width: context.screenSize.width / 7,
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.center,
              padding: urlImage != null
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 3,
                      bottom: 6,
                    ),
              margin: const EdgeInsets.only(
                right: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
                color: primary,
                image: urlImage != null
                    ? DecorationImage(
                        // image: AssetImage(
                        //   "assets/images/abdi.jpg",
                        // ),
                        image: networkImages(
                          isGride: false,
                          width: 0,
                          isProvider: true,
                          urlImage: "$imagesPath$urlImage" ??
                              "https://images.pexels.com/photos/1043473/pexels-photo-1043473.jpeg?auto=compress&cs=tinysrgb&w=600",
                        ),
                        fit: BoxFit.cover,
                      )
                    : null,
                boxShadow: [
                  BoxShadow(
                    // color: Theme.of(context).cardTheme.shadowColor!,
                    color: primary.withOpacity(0.2),
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              // child: const SizedBox(),
              child: urlImage == null || urlImage!.isEmpty
                  ? Text(
                      name.getFirstCharacters(2),
                      maxLines: 1,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                    )
                  : const SizedBox(),
            ),
            SizedBox(
              width: context.isSmallScreen ? 4.0 : 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // status and bottom sheets
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          status,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .color!
                                        .withOpacity(0.4),
                                  ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: actions,
                          child: const Icon(
                            CupertinoIcons.ellipsis,
                            size: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    name,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          //color: Colors.white,
                        ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          descriptionOne,
                          maxLines: 1,
                          softWrap: true,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  // color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .color!
                                      .withOpacity(0.4)),
                        ),
                      ),
                      // if (descriptionTwo != null)
                      //   const SizedBox(
                      //     width: 5,
                      //   ),
                      if (descriptionTwo != null)
                        Expanded(
                          child: Text(
                            descriptionTwo!,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    // color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .color!
                                        .withOpacity(0.4)),
                          ),
                        ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          createdAt,
                          // timeago.format(DateTime.parse(createdAt),
                          //     locale: 'en_short'),
                          maxLines: 1,
                          softWrap: true,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  // color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .color!
                                      .withOpacity(0.4)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
