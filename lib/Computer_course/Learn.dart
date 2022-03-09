import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_Course.dart';
import 'package:pdf/Computer_course/Mem.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips to learn programming',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Mem()));
        },),),
      body: ListView(
        children: [
          Text('How To Start Learning Computer Programming?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('As a human, you should have the habit to introspect daily and identify what you have done today, how can you improve yourself, what steps or precautions you will take to avoid difficult situations. \n'
              'Similarly, consider the below points before learning computer programming.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Be honest and think about why you want to learn computer programming. \n'
            'What is your goal, what will you accomplish in your dream of learning programming? \n'
            'Choose the right programming language. E.g. Front end programming like JavaScript, PHP, Back end programming like SQL, Java, Python for web-based development. \n'
            'Check out some interactive tutorials to get familiar with a programming language. w3schools is good to start understanding many programming languages, and w3resource is good to learn SQL queries interactively. \n'
            'Get a book on selected programming language i.e. SQL for Dummies, JavaScript for Dummies. \n'
            'Try out some online courses i.e. give a try to Udemy \n'
            'Learn Data Structures and Algorithms. \n'
            'Make a project using a selected programming language. \n'
            'Attempt some certification, and this will make you more confident, knowledgeable and competent.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          SvgPicture.asset('assets/images/prog.svg',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp_book()));
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
