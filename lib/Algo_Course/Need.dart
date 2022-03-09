import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Algo_Course/Carac.dart';
import 'package:pdf/Algo_Course/Data_def.dart';
class Need extends StatefulWidget {
  const Need({Key? key}) : super(key: key);

  @override
  _NeedState createState() => _NeedState();
}

class _NeedState extends State<Need> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Need for Data Structure',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Carac()));
        },),),
      body: ListView(
        children: [
          Text('Why do we need data structures?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Data structures are important for the following reasons:'
            '1) Data structures are used in every program or software system to arrange the data. \n'
             ' 2) Data structures are essential ingredients of many efficient algorithms. '
              'It helps in the management of huge amounts of data, such as a large integrated collection of databases. \n'
              '3) Each Data Structure allows data/elements to be stored in a specific manner in the memory. \n'
              '4)Data Structure helps in efficient data search and retrieval. \n'
              '5) For specific problems, specific Data structures are used. \n'
              '6) Data Structure allows managing a large amount of data, such as large databases and indexing services such as a hash table. \n'
              '7) Data structures organized the storage and retrieval of data and information which is stored in both main memory and secondary memory.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          SvgPicture.asset('assets/images/st.svg',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_def()));
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
