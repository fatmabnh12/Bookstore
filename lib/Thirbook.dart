import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Books.dart';

class Thirdbook extends StatefulWidget {

  @override
  _ThirdbookState createState() => _ThirdbookState();
}

class _ThirdbookState extends State<Thirdbook> {
  bool _isLoading=true;
  late PDFDocument document;
  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/javascript.pdf');
    setState(() {
      _isLoading=false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text('JavaScript for Professionals',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Books())); },),
      ),
      body:

      Center(
        child: _isLoading?
        Center(
            child: CircularProgressIndicator()):PDFViewer(document: document,),
      ),

    );
  }
}
