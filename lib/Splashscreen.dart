import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Welcome.dart';
class Splashscreen extends StatefulWidget {
  @override
  _SplashState  createState()=>new _SplashState();
}

class _SplashState extends State<Splashscreen> {
   late Timer timer;
  @override
void initState() {
    super.initState();
timer=new Timer(const Duration(seconds:5),()=>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()
    )
    )
);
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white,
  body: Container(
    child: Column(
      // added modif
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(80)),
          SvgPicture.asset('assets/images/logo.svg'),
        Padding(padding: EdgeInsets.all(70)),
        Text('FROM',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
        Image.asset('assets/images/lotus.png',width: 207,height: 49,)
    ]
    )
  )
);
  }
}

