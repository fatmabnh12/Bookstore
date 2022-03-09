import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Afterwelcome.dart';


class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Size screensize= MediaQuery.of(context).size;
    return Scaffold(
         body:
         Center(
          child: Container(
          width: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                HexColor('#FF5B7F'),
                  HexColor('#FC9272'),


                ]
            )
          ),
          // Gradient color here ! :)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/illustration.svg'),
              Padding(padding: EdgeInsets.all(10)),
              Text('Welcome',style: GoogleFonts.poppins(fontSize: 18,color: HexColor('#FFFFFF'),fontWeight: FontWeight.w800),),
              Padding(padding: EdgeInsets.all(5)),
              Text(' Everybody should learn to program a computer ',
                style: GoogleFonts.poppins(fontSize: 11,color: Colors.white,fontWeight: FontWeight.w800),
                ),
              Text(' Because it teaches you how yo think ',
                  style: GoogleFonts.poppins(fontSize: 11,color: Colors.white,fontWeight: FontWeight.w800)
                ),
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: HexColor('#FD7E77'),
                  size: 12,
                ),
                  onPressed:() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AfterWelcome()));
                  },
                  label: Text('Start',
                      style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800)
                    ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.white,

                ),
              ),

                ],

          ),
        ),
      ),

    );

  }

}
