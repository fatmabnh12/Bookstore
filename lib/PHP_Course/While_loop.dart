import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Do_loop.dart';
import 'Else_if.dart';

class While_loop extends StatefulWidget {
  const While_loop({Key? key}) : super(key: key);

  @override
  _While_loopState createState() => _While_loopState();
}

class _While_loopState extends State<While_loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The while Loop',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Else_if() ));
        },),
      ),
      body: ListView(
        children: [
          Text('The while Loop',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The while loop executes a block of code as long as the specified condition is true.\n'
            'Syntax: \n',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p41.png',width: 200,height: 200,),
          Divider(),
          Text('The example below first sets a variable i to one (i = 1). \n '
              'Then, the while loop runs as long as i is less than seven (i < 7). \n'
              ' i will increase by one each time the loop runs (i++):',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p41.png',width: 200,height: 200,),
          Divider(),
          Text('This produces the following result:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p42.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
        onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Do_loop()));
        },
        label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
        icon:Icon(Icons.arrow_forward_sharp,
          color: HexColor('#FD7E77'),
          size: 12,),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Colors.white,
        ),)
        ],
      ),
    );
  }
}
