import 'package:flutter/cupertino.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Books.dart';

class FifthBook extends StatefulWidget {

  @override
  _FifthBookState createState() => _FifthBookState();
}

class _FifthBookState extends State<FifthBook> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/flutterbook.pdf');
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
        title: Text('Flutter Succinctly',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
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
