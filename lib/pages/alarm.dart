import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:love_alarm/theme.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';
class cntt extends StatefulWidget {
  cntt({Key? key}) : super(key: key);

  @override
  State<cntt> createState() => _cnttState();
}
 late AnimationController _controller;
Animation<double> _animation=CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn
  );
class _cnttState extends State<cntt> with SingleTickerProviderStateMixin{
  @override
  @override
  void initState() { 
    super.initState();
      _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,

  )..repeat(reverse:true);
  _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn
  );
  }
  int countt=0;
  @override
void dispose() {
  _controller.dispose();
  super.dispose();
}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
VxBox(
child: ZStack([
  Align(
    alignment: Alignment.topCenter,
    child: "Love Alarm".text.bold.white.textStyle(TextStyle(fontSize: 20)).make().shimmer(
  primaryColor: Vx.white, secondaryColor: Color.fromARGB(255, 153, 0, 255),
).pOnly(top: context.percentHeight*5),
  ),
  Align(
    alignment: Alignment.center,
    child: Stack(
      fit: StackFit.loose,
      alignment: AlignmentDirectional.center,
      children: <Widget>[
         SizedBox(
          child: CircularProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.transparent,
           strokeWidth: 5,
          ).shimmer(
             primaryColor: Color.fromARGB(255, 111, 0, 255), secondaryColor: Vx.pink300,
          ),
          width: 250,
          height: 250,
        ),
         SizedBox(
          child: CircularProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.transparent,
           strokeWidth: 5,
          ).shimmer(
             primaryColor: Color.fromARGB(255, 155, 32, 255), secondaryColor: Color.fromARGB(255, 255, 255, 255),
          ),
          width: 200,
          height: 200,
        ),
         SizedBox(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 212, 0, 255),
            backgroundColor: Colors.transparent,
           strokeWidth: 5,
          ).shimmer(
             primaryColor: Color.fromARGB(255, 255, 0, 255), secondaryColor: Vx.blue300,
          ),
          width: 150,
          height: 150,
        ),
        SizedBox(
          child: FadeTransition(
            opacity: _animation,
            child: Image.asset(
                      "assets/hhh.png",
                     height: 40,
                     width: 40,
                    ),
          ),
          width: 100,
          height: 100,
        ),
      ],
    ).pOnly(bottom: 12),

  ),
  Align(
    alignment: Alignment.bottomCenter,
     child:  VStack([
       countt.text.bold.white.textStyle(TextStyle(fontSize: 50)).make().pOnly(top: 16).centered(),
      HeightBox(10),
        RaisedButton(
                onPressed: () {
                 
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Match ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/hhh.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).pOnly(right: context.safePercentWidth*25,left: context.safePercentWidth*25).centered()


     ]).pOnly(bottom: context.safePercentHeight*10),
  )

])
).bgImage(const DecorationImage(image: AssetImage("assets/ip.jpg"), fit: BoxFit.fill
)).size(context.screenWidth, context.screenHeight)
.make()
        ],
      ),
    );
  }
}