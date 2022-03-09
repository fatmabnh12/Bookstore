import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Constr.dart';
import 'package:pdf/Php_Course.dart';

class Inh extends StatefulWidget {
  const Inh({Key? key}) : super(key: key);

  @override
  _InhState createState() => _InhState();
}

class _InhState extends State<Inh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Inheritance',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Constr()));
        },),
      ),
      body: ListView(
        children: [
          Text('PHP Class Inheritance',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Classes can inherit the methods and properties of another class. \n'
              'The class that inherits the methods and properties is called a subclass.  \n'
              'The class a subclass inherits from is called the parent class. \n'
            'Inheritance is achieved using the extends keyword.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p80.png',width: 200,height: 200,),
          Divider(),
          Text('PHP Interfaces',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('An interface specifies a list of methods that a class must implement. \n'
              ' However, the interface itself does not contain any method implementations. \n'
              'This is an important aspect of interfaces because it allows a method to be handled differently in each class that uses the interface.\n'
              'The interface keyword defines an interface.'
              'The implements keyword is used in a class to implement an interface.'
              'For example, AnimalInterface is defined with a declaration for the makeSound() function,'
              ' but it isn`t implemented until it is used in a class:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p81.png',width: 200,height: 200,),
          Divider(),
          Text('A class can implement multiple interfaces. \n '
              'More than one interfaces can be specified by separating them with commas. For example:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p82.png',width: 200,height: 200,),
          Divider(),
          Text('PHP Abstract Classes',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Abstract classes can be inherited but they cannot be instantiated.\n'
            'They offer the advantage of being able to contain both methods with definitions and abstract methods that aren`t defined until they are inherited.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p83.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>PHP_sheetcheat()));
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
