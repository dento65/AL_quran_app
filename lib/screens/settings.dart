import 'package:al_quran_iust/data/data3.dart';
import 'package:flutter/material.dart';
import 'package:al_quran_iust/data/data.dart';
import 'package:al_quran_iust/constants.dart';
import 'package:al_quran_iust/services/fetch_data.dart';

//INCOMPLETE (it its the settings page but temporarily displays the Quran info )
class Settings extends StatefulWidget {
  @override
  _Settings createState() =>_Settings();
}

class _Settings extends State<Settings> {
  dynamic localDatArabic;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //it its the settings page buttemporarily displays the Quran info
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },

            ),
            title: Text('QURAN'),
          ),
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/haidan-2q947dvSR3I-unsplash.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ABOUT',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 25,
                            color: Colors.white)),
                  ],
                ),
                SizedBox(
                    height:10),
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 10, 10) ,
                    child: Text('The Quran is the central religious text of Islam. It represents the fountainhead '
                        'of Divine guidance for every Muslim. The Islamic sacred book is the words of God '
                        'and was dictated to Muhammad, the prophet of Islam, by the Archangel Gabriel and '
                        'was written down in Arabic. The chapters in this book touch upon '
                        'all aspects of human existence, including matters of doctrine, social '
                        'organization, and legislation. The Quran confirms the revelations given to earlier '
                        'Prophets, though these might not be accessible to us, in the form they were originally'
                        ' revealed. The most sublime language and a rational message that directly appeals to'
                        ' the human heart have caused this Divine book to move nations and civilizations. '
                        'It will continue to guide those who turn to God with a sincere heart, for all times.'
                    ,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ),
              ],
            )
          )
        ),
      ),

    );
  }
}
