import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:love_alarm/pages/inedit.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:love_alarm/theme.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() =>  _MyHomePageState();
}




String? my;
String? eml;
String? urll;
class _MyHomePageState extends State<MyHomePage> {
  @override
void initState(){ 
 super.initState();
fetchacc();
}
fetchacc() async{
  
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  setState(() {
      
    });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: VxAnimatedBox(
        child: VxBox(
        
        child:Column(
          children: [
            
            Align(
               alignment: Alignment.center,
              child: [
            
               
             RaisedButton(
                    onPressed: ()async{
                      await signInWithGoogle();
                      setState(() {
                        
                      });
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => infoi()),
  );
                      
                    },
                    splashColor: Themee.pc5,
                    
                    color: Colors.transparent,
                    
                    shape: RoundedRectangleBorder(
                      
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromARGB(255, 255, 136, 0))
                        ),
                    child: Row(children: ["SignIn".text.white.bold.make().centered().px8(),
                    
                     VxAnimatedBox(
                     ).bgImage(const DecorationImage(image: AssetImage("assets/in.png"))).size(15,15).make(),
                       
                      
                    ]
                    , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p4().shimmer( primaryColor:  Color.fromARGB(255, 255, 174, 0), secondaryColor: Vx.white),
                  ).pOnly(top: 16,bottom: 16,).centered(),
                 //if raised button give error then this
            //    ElevatedButton( onPressed: ()async{
            //           await signInWithGoogle();
                      
            //           setState(() {
                        
            //           });
            //         },
            // child: Row(children: [my.text.white.bold.make().centered().px8(),
            //         // Image.asset(
            //         //     "in.png",
            //         //     height: 35,
            //         //     width: 35,
            //         //   ),
            //         ]
            //         , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8().shimmer( primaryColor:  Color.fromARGB(255, 255, 174, 0), secondaryColor: Vx.white),
            //       ).pOnly(top: 16,bottom: 16,).centered()
            
      
               ].vStack(),
            ),
            
          ],
        ),
      
      ).make().pOnly(top: context.screenHeight/2.3,left: (context.screenWidth/3),right: (context.screenWidth/3) ),
      ).size(context.screenWidth, context.screenHeight).withGradient(
     LinearGradient(colors:[
        Themee.pc1,
       Themee.pc4,
       Themee.pc2,
       Themee.pc4,
       Themee.pc3,
     ],
     begin: Alignment.topLeft,
     end: Alignment.bottomRight)
   )
   .bgImage(const DecorationImage(image: AssetImage("assets/h1.png"),
   )
   )

   .make(),
    );
  }
Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
my=googleUser!.displayName!;
eml=googleUser.email;
urll=googleUser.photoUrl;

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
  

 
}

 



}

  
 String? namee()
{
  return my; 
}
agee()
{
  return eml;
}
pic()
{
  return urll;
}
