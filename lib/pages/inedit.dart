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
class infoi extends StatefulWidget {
  infoi({Key? key}) : super(key: key);

  @override
  State<infoi> createState() => _infoiState();
}
String dispn=namee().toString();
String age=agee().toString();
String gender=urll.toString();

Color cll=Vx.red500;
class _infoiState extends State<infoi> {
  

@override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        children: [
   VxAnimatedBox().size(context.screenWidth, context.screenHeight).withGradient(
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
   .make(),
  AppBar(
    automaticallyImplyLeading: false,
    title: "Edit Info!!".text.center.bold.white.make().shimmer(
      primaryColor: Color.fromARGB(255, 185, 119, 255), secondaryColor: Vx.white
    ),
    
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
  ).p16(),
  
VxBox(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      100.heightBox,
      Align(alignment: Alignment.topCenter,
      child: [VxCircle(backgroundImage: DecorationImage(image: NetworkImage(gender),),backgroundColor: Colors.transparent,radius: 90,),
            const AutoSizeText(
 
              "If u want to make any change, goto Google account's",
  style: TextStyle(fontSize: 8,color: Vx.white,),
  maxLines: 2,
).p2().centered(),].vStack()
),
 Align(alignment: Alignment.center ,
      child: [Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
            "Name: ".text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
       dispn.text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
      ],
).centered(),
5.heightBox,
Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
            "Age: ".text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
            
            Container(
             
              child: TextFormField( inputFormatters: [FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(2),
      ],textAlign: TextAlign.center, style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,color: Vx.white,fontSize: 13,fontWeight: FontWeight.bold),decoration: const InputDecoration(border: InputBorder.none),cursorColor: Vx.white,).px4(),height: 20,width: 35, decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Color.fromARGB(255, 45, 255, 73)), borderRadius: BorderRadius.circular(15),
                         ),
                         )
      ],
).centered(),
8.heightBox,
Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
            "Gender: ".text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
       Container(
              child: TextFormField( onChanged: (value) {
                
setState(() {
  if((value!='M')||(value!='F')||(value!='m')||(value!='f')){
      cll=Vx.white;}
      
});
                
                 
              }, 
                inputFormatters: [
        LengthLimitingTextInputFormatter(1),
      ],textAlign: TextAlign.center, style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,color: Vx.white,),textCapitalization: TextCapitalization.words,decoration: const InputDecoration(border: InputBorder.none),).pOnly(bottom: 2),height: 20,width: 35, decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Color.fromARGB(255, 45, 255, 73)), borderRadius: BorderRadius.circular(15),
                         ),
                         ),
                         Text("(Only M or F)",textAlign: TextAlign.center,style: TextStyle(color: cll,fontWeight: FontWeight.bold),).px8().centered(),
                         
      ],
).centered(),
8.heightBox,
Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
            "Email: ".text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
       age.text.white.bold.align(TextAlign.center).size(10).make().px8().centered(),
      ],
).centered(),
8.heightBox,
Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(child:  const TextField(
        
  decoration: InputDecoration(
    border: InputBorder.none,
    
    hintText: 'Username',
   
    labelText: 'Instagram',
    labelStyle: TextStyle(color: Color.fromARGB(255, 63, 98, 255) ),
    prefixIcon: Icon(Icons.person_add, color: Color.fromARGB(255, 29, 82, 255),),
    prefixText: ' ',
    
    suffixStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
  ),width: context.screenWidth/2,decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Color.fromARGB(255, 255, 255, 255)), borderRadius: BorderRadius.circular(15),
                         )
,),

      ],
).centered(),
8.heightBox,
Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(child:  const TextField(
         maxLines: 4,
  decoration: InputDecoration(
    border: InputBorder.none,
    
    hintText: 'Tell us about yourself',
   
    labelText: 'Bio',
    labelStyle: TextStyle(color: Color.fromARGB(255, 98, 0, 255) ),
    prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 89, 0, 255),),
    prefixText: ' ',
    
    suffixStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
  ),width: context.screenWidth/2,height: 100, decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Color.fromARGB(255, 255, 255, 255)), borderRadius: BorderRadius.circular(15),
                         )
,),






      ],
).centered(),

  RaisedButton(
                    onPressed: ()async{
                     
                     
                  
                      
                    },
                    splashColor: Themee.pc5,
                    
                    color: Colors.transparent,
                    
                    shape: RoundedRectangleBorder(
                      
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Color.fromARGB(255, 255, 136, 0))
                        ),
                    child: Row(children: ["Proceed".text.white.bold.make().centered().px8(),
                    
                     VxAnimatedBox(
                     ).bgImage(const DecorationImage(image: AssetImage("assets/h2.png"))).size(20,20).make(),
                       
                      
                    ]
                    , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().px8().shimmer( primaryColor:  Color.fromARGB(255, 255, 174, 0), secondaryColor: Vx.white),
                  ).pOnly(top: 16,bottom: 16,).centered(),
].vStack()
)
    ],
  )
  
).make().p12(),


        ],
//   children: [
//     Align(
//       alignment: Alignment.topCenter,
//       child:  Column(
//         children: [
//           VxCircle(backgroundImage: DecorationImage(image: NetworkImage("assets/h1.png"),fit: BoxFit.scaleDown),backgroundColor: Colors.transparent,),
//            const AutoSizeText(
 
//               "If u want to make any change, goto Google account's",
//   style: TextStyle(fontSize: 8,color: Vx.white,),
//   maxLines: 2,
// ).p8(),
//         ]
//         ),
// Align(
//   alignment: Alignment.center,
//   child: Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//             "Name: ".text.white.bold.align(TextAlign.center).size(20).make().px8().centered(),
//             dispn.text.white.bold.align(TextAlign.center).size(20).make().px8().centered(),
//       ],
// ).centered().p12(),
//  Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//             "Age: ".text.white.bold.align(TextAlign.center).size(20).make().px8().centered(),
//     TextFormField(
//   initialValue: 'Input text',
//   decoration: const InputDecoration(
//     labelText: 'Label text',
//     errorText: 'Error message',
//     border: OutlineInputBorder(),
//     suffixIcon: Icon(
//       Icons.error,
//     ),
//   ),
// ),
//       ],
// ).centered().p12(),
//  Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//             "Bio ".text.white.bold.align(TextAlign.center).size(20).make().px8().centered(),
//             dispn.text.white.bold.align(TextAlign.center).size(20).make().px8().centered(),
//       ],
// ).centered().p12(),
//     ],
//   ),
// )
    
//         ],
      
    
    

// )
      )
    
   
   );
  }
}