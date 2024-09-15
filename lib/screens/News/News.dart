import 'package:flutter/material.dart';

import 'CardNews.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  // Murashax API = Murashax();

  final _list = [
    {
      "createdAt": DateTime.utc(
              DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .toIso8601String(),
      "image":
          "https://madaxtooyadajsl.com/wp-content/uploads/2024/09/831A1130.jpg",
      "title":
          "Madaxweynaha Jamhuuriyadda Somaliland oo Ka qaybgalay Daah-furka Barnaamij-siyaasadeedka Afraad ee xisbiga KULMIYE.",
      "description":
          " Madaxweynaha Jamhuuriyadda Somaliland oo Ka qaybgalay Daah-furka Barnaamij-siyaasadeedka Afraad ee xisbiga KULMIYE. \n Hargeysa-12-09-2024-(MT-JSL)-Madaxweynaha Jamhuuriyadda Somaliland, ahna murrashaxa jagada madaxweyne ee xisbiga KULMIYE, Mudane Muuse Biixi Cabdi, ayaa ka qaybgalay munaasibad ballaadhan oo lagu shaacinayey Barnaamij-siyaasadeedka Afraad ee xisbiga KULMIYE ee sannadaha 2024 ilaa 2029-ka. \n Madaxweynaha oo ay munaasibadda kala qaybgaleen hoggaanka sare ee xisbiga KULMIYE, xubno kamid ah golaha wasiirrada, xildhibaanno, saraakiil katirsan guddida fulinta xisbiga KULMIYE, haween, dhallinyaro, aqoonyahan iyo marti-sharaf kale, ayaa lagu lafo-guray barnaamij-siyaasadeedka Afraad ee KULMIYE ugu talo galay inuu ku galo doorashooyinka dhammaadka sannadkan qorshaysan. \n Ugu horrayn, waxa halkaas ka hadlay guddoomiyaha guddida soo diyaarisay Barnaamij-siyaasadeeda KULMIYE oo ay kamid yihiin guddoomiye Cabdiweli Suufi iyo Farxaan Aadan Haybe, kuwaas oo si qoto dheer u sharraxay meelaha uu Barnaamijkani sida gaarka ah diiradda u saarayo, waxana ay sheegeen inuu ka kooban yahay lix tiir oo waaweyn oo kala ah: Arrimaha dibadda, Amniga gudaha iyo dibadda, Dhaqaalaha, wax soo saarka, Xoolaha, Beeraha iyo Kalluumaysiga, Adeegyada Arrimaha Bulshada iyo ku dhaqanka Diinta Islaamka, Horumarinta Dawladnimada iyo adkaynta Dimuqraaddiyadda Maareynta Deegaanka iyo isbeddelka cimilada. \n Xubno kamid ah hoggaanka xisbiga KULMIYE oo ay kamid yihiin guddoomiyaha KULMIYE, mudane Maxamed Kaahin Axmed, guddoomiye-ku-xigeenka koowaad ee xisbiga, Mudane Cabdicasiis Maxamed Samaale, ku-xigeenka saddexaad, ahna murrashaxa jagada madaxweyne-ku-xigeenka saddexaad, Mudane Maxamuud Xasan Sacad Saajin iyo xoghayaha guud, Mudane Faysal Cabdiraxmaan Madar oo hadalka u kala dambeeyey, ayaa bogaadiyey barnaamij siyaasadeedka cusub ee xisbigu ku gelayo doorashooyinka soo socda, waxana ay bulshada ugu baaqeen in wixii lagu dooran lahaa ay badka keeneen. \n Wasiirrada wasaaradaha xannaanada xoolaha iyo horumarinta caafimaadka, Mudane Siciid Sulub Maxamed iyo, Mudane Xasan Maxamed Cali Gaafaadhi, ayaa dhankooda jawaabo adag ka bixiyey hadallo maalmahanba ka imanayey madaxda xisbiga WADDANI, waxana ay adkeeyeen inay wataan murrashaxiin shirraban oo bulshadu kalsooni badan ku qabto. \n Madaxweyne-ku-xigeenka Jamhuuriyadda Somaliland, Mudane Cabdiraxmaan Cabdilaahi Ismaaciil (Saylici), ayaa barnaamij-siyaasadeedka cusub ee xisbiga soo dhaweeyey, waxana uu u mahadnaqay xubnihii soo diyaariyey. \n Madaxweynaha Jamhuuriyadda Somaliland, Mudane Muuse Biixi Cabdi oo munaasibadda soo afmeeray, ayaa bogaadiyey guddida gacanta ku haysay Barnaamijka maanta la shaaciyey, waxana uu ku sifeeyey mid ay bulshadu  ku go’aan qaadan karto.",
    },
    {
      "createdAt": DateTime.utc(
              DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .toIso8601String(),
      "image":
          "https://madaxtooyadajsl.com/wp-content/uploads/2024/09/1-2-696x464.jpg",
      "title":
          "Madaxweynaha Jamhuuriyadda Somaliland oo Xadhiga ka Jaray Ceelasha Biyaha Macaan ee Gabiley Kormeerna ku tegay Xarunta Xisbiga Kulmiye",
      "description":
          "Madaxweynaha Jamhuuriyadda Somaliland oo Ka qaybgalay Daah-furka Barnaamij-siyaasadeedka Afraad ee xisbiga KULMIYE. \n Hargeysa-12-09-2024-(MT-JSL)-Madaxweynaha Jamhuuriyadda Somaliland, ahna murrashaxa jagada madaxweyne ee xisbiga KULMIYE, Mudane Muuse Biixi Cabdi, ayaa ka qaybgalay munaasibad ballaadhan oo lagu shaacinayey Barnaamij-siyaasadeedka Afraad ee xisbiga KULMIYE ee sannadaha 2024 ilaa 2029-ka. \n Madaxweynaha oo ay munaasibadda kala qaybgaleen hoggaanka sare ee xisbiga KULMIYE, xubno kamid ah golaha wasiirrada, xildhibaanno, saraakiil katirsan guddida fulinta xisbiga KULMIYE, haween, dhallinyaro, aqoonyahan iyo marti-sharaf kale, ayaa lagu lafo-guray barnaamij-siyaasadeedka Afraad ee KULMIYE ugu talo galay inuu ku galo doorashooyinka dhammaadka sannadkan qorshaysan. \n Ugu horrayn, waxa halkaas ka hadlay guddoomiyaha guddida soo diyaarisay Barnaamij-siyaasadeeda KULMIYE"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: FutureBuilder<List>(
        // future:
        //     PersonalAPI.getPersonalInfo('5fec1e76001cea21d1580032'),
        future: Future.delayed(const Duration(seconds: 2), () async {
          return _list;
        }),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            return snap.hasData
                ? CardNews(data: snap.data ?? [])
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
              child: CircularProgressIndicator(
                backgroundColor: Colors.green.shade200,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                strokeWidth: 7,
              ),
            );
          }
        },
      ),
    );
  }
}
