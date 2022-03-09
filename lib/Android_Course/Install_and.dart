import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Button_android.dart';
import 'package:pdf/Android_Course/Jdk.dart';
import 'package:url_launcher/url_launcher.dart';

class Install_and extends StatefulWidget {
  const Install_and({Key? key}) : super(key: key);

  @override
  _Install_andState createState() => _Install_andState();
}

class _Install_andState extends State<Install_and> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Install Android Studio',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Jdk()));
        },),
      ),
      body: ListView(
        children: [
          Text('Install and Set up Android Studio ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Android Studio is the official IDE (Integrated Development Environment) for Android app development and it is based on JetBrains’ IntelliJ IDEA software.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('System Requirements',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Microsoft Windows 7/8/10 (32-bit or 64-bit) \n'
              '4 GB RAM minimum, 8 GB RAM recommended (plus 1 GB for the Android Emulator) \n'
          '2 GB of available disk space minimum, 4 GB recommended (500 MB for IDE plus 1.5 GB for Android SDK and emulator system image) \n'
          '1280 x 800 minimum screen resolution'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Installation guide',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(onPressed: (){
            _launchUrl();
          },child:Text('Step 1: Head over to this link to get the Android Studio executable or zip file.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),),
          Divider(),
          Image.asset('assets/images/a2.png',width: 300,height: 300,),
          Divider(),
          Text('Step 2 :Click on the “I have read and agree with the above terms and conditions” checkbox followed by the download button. '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a3.png',width: 300,height: 300,),
          Divider(),
          Text('Step 3:After the downloading has finished, open the file from downloads and run it. It will prompt the following dialog box.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a4.png',width: 300,height: 300,),
          Divider(),
          Text('Step 4:It will start the installation, and once it is completed, it will be like the image shown below. '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a5.png',width: 300,height: 300,),
          Divider(),
          Text('Step 5:Once “Finish” is clicked, it will ask whether the previous settings need to be imported [if the android studio had been installed earlier], or not. It is better to choose the ‘Don’t import Settings option’.   '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a6.png',width: 300,height: 300,),
          Divider(),
          Image.asset('assets/images/a7.png',width: 300,height: 300,),
          Divider(),
          Text('Step 6: This will start the Android Studio.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a8.png',width: 300,height: 300,),
          Divider(),
          Text('Meanwhile, it will be finding the available SDK components.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a9.png',width: 300,height: 300,),
          Divider(),
          Text('Step 7: After it has found the SDK components, it will redirect to the Welcome dialog box.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a10.png',width: 300,height: 300,),
          Divider(),
          Text('Click on NEXT '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a11.png',width: 300,height: 300,),
          Divider(),
          Text('Choose Standard and click on Next.'
              ' Now choose the theme, whether the Light theme or the Dark one. '
              'The light one is called the IntelliJ theme whereas the dark theme is called Dracula. Choose as required. '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a12.png',width: 300,height: 300,),
          Divider(),
          Text('Step 8: Now it is time to download the SDK components.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a13.png',width: 300,height: 300,),
          Divider(),
          Text('Click on Finish. Components begin to download let it complete.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a14.png',width: 300,height: 300,),
          Divider(),
          Text('Step 9: Click on Start a new Android Studio project to build a new app.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a15.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Button_android()));
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
_launchUrl() async{
  const url="https://developer.android.com/studio/#downloads";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
