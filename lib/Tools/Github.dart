import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Atom.dart';
import 'package:pdf/Tools/Netbeans.dart';
import 'package:url_launcher/url_launcher.dart';

class Github extends StatefulWidget {
  const Github({Key? key}) : super(key: key);

  @override
  _GithubState createState() => _GithubState();
}

class _GithubState extends State<Github> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Atom())); },),),
      body: ListView(
        children: [
          Divider(),
          SvgPicture.asset('assets/images/git.svg',width: 50,height: 50,),
          Divider(),
          Text('Github',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('GitHub is a powerful collaboration tool and development platform for code review and code management. With this GitHub, the users can build applications and software, manage the projects, host the code, review the code etc.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('For further information on Github visit here',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('With GitHub, developers can easily document their code and can host the same from the repositories. \n'
            'GitHub’s project management tools help its users to stay aligned, co-ordinate easily and get their task done accordingly. \n'
            'Few features of GitHub that make it a useful tool are its code security, access control among the team members, integration with other tools etc.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Netbeans()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),),

        ],
      ),
    );
  }
}
_launchUrl() async{
  const url="https://atom.io/";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}

