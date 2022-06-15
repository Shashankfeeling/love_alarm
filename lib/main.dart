import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_alarm/pages/alarm.dart';
import 'package:love_alarm/pages/inedit.dart';
import 'package:love_alarm/pages/login.dart';
import 'theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
static  LinearGradient pcc= LinearGradient(colors: [
       Themee.pc1,
       Themee.pc4,
       Themee.pc2,
       Themee.pc4,
       Themee.pc3,
     ],
     begin: Alignment.topLeft,
     end: Alignment.bottomRight);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
backgroundColor:  Themee.pc2,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        
       primaryColorLight: Themee.pc2,
       fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: cntt(),
    );
  }
}

