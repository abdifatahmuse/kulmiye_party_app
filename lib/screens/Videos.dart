import 'package:flutter/material.dart';

// import 'package:siciidjama/API/MurashaxAPI.dart';
import 'CardVideos.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  // YoutubePlayerController _videoController;
  final bool _muted = false;
  final bool _isPlayerReady = false;

  final _list = [
    {
      'title':
          'Madaxweynaha JSL Muuse Biixi oo Ka Qayb Galey Barnaamij Siyaasadeedka KULMIYE 2024 ILAA 2029.',
      // 'url': 'https://youtu.be/tZ3tsNZy_ng',
      // 'url': 'https://www.youtube.com/watch?v=tZ3tsNZy_ng&ab_channel=SLNTV',
      'url': 'tZ3tsNZy_ng',
    },
    {
      'title':
          'Madaxweynaha JSL Muuse Biixi Cabdi Oo Si Weyn Loogu Soo Dhaweeyay Magaaladda OODWEYNE.',
      // 'url': 'https://youtu.be/8FlnY1HBKNA',
      // 'url': 'https://www.youtube.com/watch?v=8FlnY1HBKNA&ab_channel=SLNTV',
      'url': '8FlnY1HBKNA',
    },
    {
      'title':
          'Madaxweynaha JSL Muuse Biixi Cabdi Oo Booqdey Jiidda Hore Ee Ciidanka Qaranka JSL Ee Degmadda Oog.',
      // 'url': 'https://youtu.be/5SSCBct4W0Y',
      // 'url': 'https://www.youtube.com/watch?v=5SSCBct4W0Y&ab_channel=SLNTV',
      'url': '5SSCBct4W0Y',
    },
    {
      'title':
          'Madaxwaynaha JSL Md Muuse Biixi Cabdi ayaa lagu soo dhaweyey Degmada Tog-wajaale.',
      // 'url': 'https://youtu.be/9paUum19zug',
      // 'url': 'https://www.youtube.com/watch?v=9paUum19zug&ab_channel=SLNTV',
      'url': '9paUum19zug',
    },
  ];

  // Murashax API = Murashax();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Videos'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
          bottom: 15.0,
        ),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 90,
          padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: FutureBuilder<List>(
            // future:
            //     PersonalAPI.getPersonalInfo('5fec1e76001cea21d1580032'),
            future: Future.delayed(const Duration(seconds: 2), () async {
              return _list;
            }),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.done) {
                if (snap.hasError) {
                  print('Snap Data Error: ${snap.error}');
                }

                return snap.hasData
                    ? CardVideos(data: snap.data!)
                    : Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.green.shade200,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.green),
                          strokeWidth: 7,
                        ),
                      );
              } else {
                return Center(
                  child: Column(
                    children: [
                      // Text('Internet Connection Error'),
                      CircularProgressIndicator(
                        backgroundColor: Colors.green.shade200,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 7,
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
