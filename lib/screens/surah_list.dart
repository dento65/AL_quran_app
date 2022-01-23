import 'package:al_quran_iust/screens/surah_conent.dart';
import 'package:flutter/material.dart';
import 'package:al_quran_iust/services/fetch_data.dart';
import'package:al_quran_iust/data/data3.dart';
import 'package:flutter_test/flutter_test.dart';



class SurahList extends StatefulWidget { //SUARH LIST PAGE
  @override
  State<StatefulWidget> createState() {
    return _SurahList();
  }
}

class _SurahList extends State<SurahList> {

  void initState() {
    super.initState();
    dataCatcher(); // here this func helps in debugging
  }

  void dataCatcher() {
    // here imp thing is services previously made work out well
    //but the app performe decreased significantly so we directly
    //fetch the data from the data files(i.e:Brain())
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug tag
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar( //app bar
            title: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "سورة  Surahs",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration( // sets the background image
              image: DecorationImage(
                image: AssetImage(
                    'images/book.jpg'
                    ),
                fit: BoxFit.cover,
              ),
            ),

            child: ListView.builder(  // builds the surah list
              itemCount: 114,        //no of items = 114 surahs
              itemBuilder: (context, index) {
                return ListTile(
                // in widget list title 4 properties used
                // leading , title .subtitle(below title),
                // trailing(extremely useful to manange arabic and english text in same(row
                // with different oritentations))
                      leading: Text(
                        '${index + 1}.', // surah index
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),

                  title:
                      Text(
                        Brain3().getSurahNameE(index),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      subtitle:
                      Text('verses: ${Brain3().getSurahVerses(index)}'), // no of verses

                  trailing:
                      Text(
                        ('سورة ${Brain3().getSurahNameA(index)}'), //surahname in arabic
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 19,color: Colors.white,),

                      ),
                  onTap: () {
                    var route = new MaterialPageRoute( // on tap move to surah content
                      //of particular surah
                      builder: (BuildContext context) =>
                      new SurahContent(surahNo: index), //pushing the surah index to next route
                    );
                    Navigator.of(context).push(route);
                  },
                );

              },

            ),
          ),
        ),
      ),
    );
  }
}
