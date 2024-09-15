import 'package:flutter/material.dart';
import 'package:kulmiye/main_paths.dart';

class SingleNews extends StatefulWidget {
  final List data;
  final int index;

  const SingleNews({super.key, required this.data, required this.index});

  @override
  _StateSingleNews createState() => _StateSingleNews();
}

class _StateSingleNews extends State<SingleNews> {
  // Murashax API = Murashax();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News on Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          bottom: 10.0,
          top: 0.0,
        ),
        child: Column(
          children: [
            networkImages(urlImage: widget.data[widget.index]['image']),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.data[widget.index]['description'] ?? "",
              textAlign: TextAlign.left,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                  // fontFamily: 'Poppins',
                  // color: Colors.black,
                  // fontSize: 16,
                  // fontWeight: FontWeight.w400,
                  // letterSpacing: 0.8,
                  // wordSpacing: 0.8,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
