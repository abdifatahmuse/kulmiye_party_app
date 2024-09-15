import 'package:flutter/material.dart';
import 'package:kulmiye/main_paths.dart';

import 'SingleNews.dart';

class CardNews extends StatelessWidget {
  final List data;
  const CardNews({super.key, required this.data});

  // var date = DateTime.parse('2021-03-14T22:00:20.245Z');
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 0.0,
        bottom: 15.0,
      ),
      itemBuilder: (context, i) {
        var date = DateTime.parse('${data[i]['createdAt']}');
        return Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 15.0,
          ),
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadiusGeometry,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    SingleNews(data: data, index: i),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: networkImages(
                    width: 140,
                    urlImage: data[i]['image'],
                    isProvider: false,
                    isGride: false,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "${data[i]['description']}",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: context.theme.textTheme.labelLarge?.copyWith(
                            // fontFamily: 'Poppins',
                            // color: Colors.black,
                            // fontSize: 14,
                            // fontWeight: FontWeight.w500,
                            // letterSpacing: 0.6,
                            // wordSpacing: 0.6,
                            ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        "${date.year}-${date.month}-${date.day}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.theme.textTheme.bodySmall?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.6,
                          wordSpacing: 0.6,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
