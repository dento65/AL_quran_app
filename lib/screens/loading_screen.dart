import 'dart:async';
import 'package:flutter/material.dart';
import 'surah_list.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,  // to remove the debug tag
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {  // timer is called for 1 sec before moving to next
    //route in the meantime splash screen is there
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SurahList(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(     //SPLASH SCREEN for 1 sec
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'images/haidan-2q947dvSR3I-unsplash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: <Widget>[
        // This expands the row element vertically because it's inside a column
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // This makes the blue container full width.

              Expanded(
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "AL-Quran",
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white30,
                          decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
    ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  height: 30.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "developed by:  ",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white30,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "@zaid_dento",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white30,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
            ],
          ),
      ]
      ),
    );
  }
}
