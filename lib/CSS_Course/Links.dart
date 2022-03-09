import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/CSS_Course.dart';
import 'package:pdf/CSS_Course/Background_repeat.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Links extends StatefulWidget {
  const Links({Key? key}) : super(key: key);

  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Styling the links',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_repeat()));
          },)
      ),
      body: ListView(
        children: [
          Text('Setting Styles to Links',textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Links can be styled with any CSS property (e.g., color, font-family, background, etc.). \n '
            'In addition, links can be styled differently, depending on what state they are in. \n  '
              'The following pseudo selectors are available: \n '
            'a:link - defines the style for normal unvisited links \n '
            'a:visited - defines the style for visited links \n '
            'a:active - a link becomes active once you click on it \n '
            'a:hover - a link is hovered when the mouse is over it \n '
            'The example below creates a link that will change the style when the mouse is moved over it.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Text('The HTML:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
          Image.asset('assets/images/tag194.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag195.png',width: 200,height: 200,),
          Divider(),
          Text('The link from the above example would look like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag196.png',width: 200,height: 200,),
          Divider(),
          Text('But when we mouse over it, it becomes red, as we defined in our stylesheet :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag197.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('When setting the style for several link states, there are some order rules: \n '
                '- a:hover MUST come after a:link and a:visited \n'
                 '- a:active MUST come after a:hover'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>CSS_Cheat()));},
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
