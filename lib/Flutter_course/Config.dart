import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_Course.dart';
import 'package:pdf/Flutter_course/Splash.dart';

class Config_firebase extends StatefulWidget {
  const Config_firebase({Key? key}) : super(key: key);

  @override
  _Config_firebaseState createState() => _Config_firebaseState();
}

class _Config_firebaseState extends State<Config_firebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase',style: GoogleFonts.poppins(fontSize:17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Splash()));
        },),
      ),
      body: ListView(
        children: [
          Text('Firebase',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          SvgPicture.asset('assets/images/firebase.svg',width: 50,height: 50,),
          Divider(),
          Text('Firebase is a great backend solution for anyone that wants to use authentication, databases, cloud functions, ads, '
              'and countless other features within an app.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('First, log in with your Google account to manage your Firebase projects. \n '
              'From within the Firebase dashboard, select the Create new project button and give it a name:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f1.png',width: 300,height: 300,),
          Divider(),
          Text('In order to add Android support to our Flutter application, select the Android logo from the dashboard. \n'
              ' This brings us to the following screen',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f2.png',width: 400,height: 400,),
          Divider(),
          Text('Once you’ve decided on a name, \n'
              'open android/app/build.gradle in your code editor and update the applicationId to match the Android package name:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f3.png',width: 300,height: 300,),
          Divider(),
          Text('The next step is to add the Firebase configuration file into our Flutter project. \n'
              ' This is important as it contains the API keys and other critical information for Firebase to use.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f4.png',width: 400,height: 400,),
          Divider(),
          Text('We’ll now need to update our Gradle configuration to include the Google Services plugin. \n'
            'Open android/build.gradle in your code editor and modify it to include the following:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f5.png',width: 300,height: 300,),
          Divider(),
          Text('Finally, update the app level file at android/app/build.gradle to include the following:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f6.png',width: 300,height: 300,),
          Divider(),
          Text('From here, run your application on an Android device or simulator. If everything has worked correctly, you should get the following message in the dashboard:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/f7.png',width: 400,height: 400,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_CheatSheet()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          ),






        ],
      ),
    );
  }
}
