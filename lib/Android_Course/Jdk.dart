import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Arch.dart';
import 'package:pdf/Android_Course/Install_and.dart';
import 'package:url_launcher/url_launcher.dart';

class Jdk extends StatefulWidget {
  const Jdk({Key? key}) : super(key: key);

  @override
  _JdkState createState() => _JdkState();
}

class _JdkState extends State<Jdk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Install JDK',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Arch()));
        },),
      ),
      body: ListView(
        children: [
          Text('Java Development kit',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('This Java Development Kit(JDK) allows you to code and run Java programs and mandatory to Android. '
              'It’s possible that you install multiple JDK versions on the same PC. '
              'But Its recommended installing Java on Windows 10 with latest version.'),
          Divider(),
          TextButton(onPressed: (){_launchUrl();},
              child: Text(' 1) Go to Link and download JDK 8',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),)),
          Divider(),
          Image.asset('assets/images/javainstall.png',width: 300,height: 300,),
          Divider(),
          Text('2) Next,\n'
            'Accept License Agreement \n'
            'Download Java 8 JDK for your version 32 bit or JDK download 64 bit.',
          textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/javainstall2.png',width: 300,height: 300,),
          Divider(),
          Text('3) When you click on the Installation link the popup will be open.'
              ' Click on I reviewed and accept the Oracle Technology Network License Agreement for Oracle Java SE development kit and you will be redirected to the login page. '
              'If you don’t have an oracle account you can easily sign up by adding basics details of yours.',
          textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/javainstall3.png',width: 300,height: 300,),
          Divider(),
          Text('4) Once the Java JDK 8 download is complete, run the exe for install JDK. Click Next',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/javainstall4.png',width: 300,height: 300,),
          Divider(),
          Text('5) Select the PATH to install Java in Windows… You can leave it Default. Click next.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/javainstall5.png',width: 300,height: 300,),
          Divider(),
          Text('6) Once you install Java in windows, click Close',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/javainstall6.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Install_and()));
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
  const url="https://www.oracle.com/java/technologies/javase-downloads.html";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
