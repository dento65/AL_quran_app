import 'package:al_quran_iust/data/data3.dart';
import 'package:al_quran_iust/data/data2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_quran_iust/data/data.dart';
import 'package:al_quran_iust/screens/settings.dart';



class SurahContent extends StatefulWidget {
  SurahContent({Key? key, @required this.surahNo}) : super(key: key); // surahno
  final surahNo;  // surah number through push from previous route
  @override
  _SurahContent createState() => _SurahContent();
}

class _SurahContent extends State<SurahContent> {
  double fontSizeArabic = 30.0; //fontsizes are seperate variable for E and ARABIC
  //so we can manipulate them by zoom in and out
  double fontSizeEnglish = 16.0;
  Color _favIconColor = Colors.grey,defaultIconColor = Colors.red;
  void initState() {
    super.initState();

    fu();
  }

  void fu() {
       //helps in debugging
  }// here imp thing is services previously made work out well
  //but the app performance decreased significantly so we directly
  //fetch the data from the data files(i.e:Brain())

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(    //app bar
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios), // back icon
              onPressed: () {
                Navigator.of(context).pop(); // pop => back to surah list
              },
            ),
            title: Text(       // displays surah name
              'سورة ${Brain3().getSurahNameA(widget.surahNo)}',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [    // here is the zoom icon
              GestureDetector(
                child: Icon(Icons.zoom_in),
                onTap: () {
                  getFontSize(context);  // func gets called scroll up to bottom
                },
              ),
              SizedBox(
                width: 18,
              ),
              GestureDetector(
                child: Icon(Icons.settings),
                onTap: () {
                  var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new Settings(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/masjid-pogung-dalangan-DBsQFuIbXg4-unsplash.jpg'),
                fit: BoxFit.cover,
              ),
            ),

            child: ListView.builder( // list of verses of a particular surah
              itemCount: Brain3().getSurahVerses(widget.surahNo), //no of verses in the particular surah
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       Expanded(
                          child: Text( // dispalys arabic text for a single verse
                              '${index + 1}).  ${Brain().getSurahArabic(widget.surahNo, index)}',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'RobotoMono',
                                  fontSize: fontSizeArabic,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    Container(  // displays english text for a single verse
                      child: Text('${Brain2().getSurahEnglish(widget.surahNo, index)}',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: 'RobotoMono',
                              fontSize: fontSizeEnglish,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void getFontSize(BuildContext context) { // returns Dailog box to change fontSize
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Font Size"),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  Text('fontSizeArabic:'),
                  Slider(
                    value: fontSizeArabic,
                    min: 0,
                    max: 50.0,
                    onChanged: (value) {
                      setState(() {
                        fontSizeArabic = value;
                      });
                      label : ('$fontSizeArabic ');
                    },
                  ),
                  Text('fontSizeEnglish:'),
                  Slider(
                    value: fontSizeEnglish,
                    min: 0,
                    max: 50.0,
                    onChanged: (value) {
                      setState(() {
                        fontSizeEnglish = value;
                      });
                      label : ('$fontSizeEnglish');
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  // Use the second argument of Navigator.pop(...) to pass
                  // back a result to the page that opened the dialog
                  Navigator.pop(context);
                },
                child: Text('DONE'),
              )
            ],
          );
        });
  }
}
