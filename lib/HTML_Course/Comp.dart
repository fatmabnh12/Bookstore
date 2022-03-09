import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Audio.dart';
import 'package:pdf/HTML_Course/Structure.dart';
import 'package:google_fonts/google_fonts.dart';

class Comp extends StatefulWidget {
  const Comp({Key? key}) : super(key: key);

  @override
  _CompState createState() => _CompState();
}

class _CompState extends State<Comp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('header,nav & footer',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Structure())); },),
      ),
      body:ListView(
        children: [
          Text('The <header> Element',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('In HTML5, a simple <header> tag is used, instead.'
              'The <header> element is appropriate for use inside the body tag.'
              ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag70.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/tag71.png',width: 200,height: 200,),
          Divider(),
          Text('The <footer> Element',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The footer element is also widely used.'
            'Generally we refer to a section located \n'
              ' at the very bottom of the web page as the footer.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag72.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The following information is usually provided between these tags: \n'
                '- Contact Information \n'
               '- Privacy Policy \n'
              '- Social Media Icons \n'
              '- Terms of Service \n'
              '- Copyright Information \n'
              '- Sitemap and Related Documents'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
             Text('The <nav> Element',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             Padding(padding: EdgeInsets.all(4)),
             Text('This tag represents a section of a page that links to other pages or to certain sections within the page. '
                 'This would be a section with navigation links.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
             Divider(),
             Text('Here is an example of a major block of navigation links:',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
             Divider(),
             Image.asset('assets/images/tag73.png',width: 200,height: 200,),
             Divider(),
              Image.asset('assets/images/tag74.png',width: 200,height: 200,),
             Divider(),
            Text('The <article> Element',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Padding(padding:EdgeInsets.all(4)),
           Text('Article is a self-contained, independent piece of content that can be used and \n'
               'distributed separately from the rest of the page or site. This could be a forum post,\n'
               ' a magazine or newspaper article, a blog entry, a comment, an interactive widget or gadget, or any other independent piece of content.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
            Image.asset('assets/images/tag75.png',width: 200,height: 200,),
            Divider(),
          Text('The <section> Element',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('<section> is a logical container of the page or article. \n'
            'Sections can be used to divide up content within an article. \n'
            'For example, a homepage could have a section for introducing the company, another for news items, and still another for contact information.\n',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('Each <section> should be identified, typically by including a heading (h1-h6 \n '
              ' element) as a child of the <section> element. \n'
          ,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600 ),),
           Divider(),
          Image.asset('assets/images/tag76.png',width: 200,height: 200,),
          Divider(),
          Text('The <aside> Element',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('<aside> is secondary or tangential content which could be considered \n'
              'separate from but indirectly related to the main content.'
            'This type of content is often represented in sidebars.\n'
            'When an <aside> tag is used within an <article> tag, the content of the <aside> should be specifically related to that article.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag77.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Audio()));},
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
