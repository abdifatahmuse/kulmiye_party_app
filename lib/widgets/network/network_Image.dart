import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

networkImages({
  double? width,
  required String urlImage,
  bool isProvider = false,
  bool isGride = false,
}) {
  return isProvider == true
      ? CachedNetworkImageProvider(
          urlImage,
        )
      : CachedNetworkImage(
          //  image.replaceAll("\\", "ss\").toString(),

          // 'assets/images/HRG.jpg',
          // imageBuilder: ((context, imageProvider) => Shimmer.fromColors(
          //       baseColor: Colors.green,
          //       highlightColor: Colors.blueGrey,
          //       child: Container(
          //         width: double.infinity,
          //         height: 8.0,
          //         color: Colors.white,
          //       ),
          //     )),
          // placeholder: (context, url) =>
          //     const CircularProgressIndicator(),

          imageUrl: urlImage,

          fit: BoxFit.cover,
          height: width != null
              ? (isGride == false ? width / 1.1 : width / 4.6)
              : width,
          width:
              width != null ? (isGride == false ? width : width / 2.3) : width,

          // Loading Waiting Shimmer or showing it's Loading.
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.green.shade200,
            highlightColor: Colors.green.shade100,
            // enabled: true,
            child: Container(
              // height: size!.width / 4.6,
              // width: size!.width / 2.3,
              color: Colors.white,
            ),
          ),

          // error, if the image not found, it'll replace.
          errorWidget: (context, url, error) => Shimmer.fromColors(
            baseColor: Colors.green.shade200,
            highlightColor: Colors.green.shade100,
            // enabled: true,
            child: Container(
              // height: size!.width / 4.6,
              // width: size!.width / 2.3,
              color: Colors.white,
            ),
          ),

          // width: 100,
        );
}
