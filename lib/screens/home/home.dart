import 'package:flutter/material.dart';
import 'package:kulmiye/constants/constants.dart';
import 'package:kulmiye/core/cores.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print('Could not launch $url');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text('Test'),
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Container(
          height: context.screenSize.height,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.amber[500],
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Colors.white,
                  Color(0xFFF7E92D),
                ]),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 50.0,
              bottom: 15.0,
            ),
            child: Column(
              children: [
                // top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome to',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          TextSpan(
                            text: '\nKulmiye Party',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                            ),
                          ),
                          TextSpan(
                            text: '\n Compile App',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        icon: Image.asset(
                          'Assets/images/Logo.png',
                          height: 65,
                        ),
                        iconSize: 65,
                        onPressed: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                '/About', (route) => true)),
                  ],
                ),
                // center image
                Container(
                  margin: EdgeInsets.only(
                    top: context.screenSize.height * 0.05,
                    bottom: context.screenSize.height * 0.1,
                  ),
                  child: Image.asset(
                    'Assets/images/banner.png',
                    width: context.screenSize.width,
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  color: Colors.transparent,
                  height: 130,
                  child: ListView(
                    // padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DashboardCard(
                        route: "/News",
                        title: "News",
                        description: "Latest News",
                        image: "Assets/images/newspaper.png",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DashboardCard(
                        route: "/Videos",
                        title: "Videos",
                        description: "Campaign Videos",
                        image: "Assets/images/videos.png",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DashboardCard(
                        route: "/Programs",
                        title: "Programs",
                        description: "Manifesto & Issues",
                        image: "Assets/images/road.png",
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      DashboardCard(
                        route: "/About",
                        title: "About",
                        isWhite: false,
                        description: "Kulmiye Party",
                        image: "Assets/images/Logo.png",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 0.0,
                    right: 0.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'Assets/images/whatsapp.png',
                              color: const Color(0xFF048D45),
                              height: 30,
                            ),
                            onPressed: () => _launchURL(
                                'whatsapp://send?phone=+252659178888'),
                          ),
                          const Text(
                            'WhatsApp',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'Assets/images/support.png',
                              color: const Color(0xFF048D45),
                              height: 30,
                            ),
                            onPressed: () => _launchURL('tel://0634408237'),
                          ),
                          const Text(
                            'Call Us',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'Assets/images/love.png',
                              color: const Color(0xFF048D45),
                              height: 30,
                            ),
                            onPressed: () => Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                    '/Volunteers', (route) => true),
                          ),
                          const Text(
                            'Volunteer',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'Assets/images/archive.png',
                              color: const Color(0xFF048D45),
                              height: 30,
                            ),
                            onPressed: () => Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                    '/Register', (route) => true),
                          ),
                          const Text(
                            'U Codee',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
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
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String route;
  final String title;
  final String description;
  final String image;
  final bool isWhite;

  const DashboardCard({
    super.key,
    required this.route,
    required this.title,
    required this.description,
    required this.image,
    this.isWhite = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => true),
      child: Container(
        padding: const EdgeInsets.only(
          left: 15.0,
          top: 20.0,
          bottom: 15.0,
          right: 5.0,
        ),
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xFF048D45),
          borderRadius: borderRadiusGeometry,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              color: isWhite ? Colors.white : null,
              height: 45,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                // fontWeight: FontWeight.w600,
                // letterSpacing: 1,
                // wordSpacing: 1,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
                // fontSize: 10,
                // fontWeight: FontWeight.w400,
                // letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
