import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  // share(BuildContext context) {
  //   final RenderBox box = context.findRenderObject();
  //   Share.share(
  //       "https://play.google.com/store/apps/details?id=geestechnology.com.siciidjama",
  //       subject: "Murashax Saed Jama Ali",
  //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 20.0,
          bottom: 15.0,
        ),
        child: Column(
          children: [
            Image.asset(
              'Assets/images/Logo.png',
              height: 250,
            ),
            const Text(
              'Muuse Biixi Cabdi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // share(context);
                  context.showCustomSnackBar(
                    title: "Not Available in the Store Yet!!",
                    description: "Please check back later, ",
                    // tag: "Installation",
                    type: ESnackBarStatus.info,
                  );
                });
              },
              child: ClipRRect(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: borderRadiusGeometry,
                  ),
                  height: 75.0,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        size: 30.0,
                        color: Color(0xFF048D45),
                      ),
                      Padding(padding: EdgeInsets.only(left: 25.0)),
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Color(0xFF048D45),
                          fontFamily: 'Poppins',
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 10.0,
                right: 10.0,
                bottom: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: borderRadiusGeometry,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Musa Bihi Abdi is a',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                        TextSpan(
                          text: ' Somaliland politician',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' and former military officer who has been President of Somaliland since December 2017. During the 1970s, he served as a pilot in the Somali Air Force under the Siad Barre administration.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'musebihi.com',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF048D45),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1,
                      wordSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
