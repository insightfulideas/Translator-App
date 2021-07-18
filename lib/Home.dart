import 'package:flutter/material.dart';
import 'package:translator_app/Dictionary.dart';

import 'Chat.dart';
import 'OnMobile.dart';
import 'VoiceT.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  
  Widget build(BuildContext context) 
{
    final mediaQuery=MediaQuery.of(context);
    return Scaffold(

      appBar: AppBar(
      
      title:  Row(     
              children: [
                  Image.asset(
                 'assets/Translator.png',
                  fit: BoxFit.contain,
                  height: 35,
              ),
            
              Container(
    
              padding: const EdgeInsets.all(15.0), child: Text('Home',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
              
            ],),
            
            
            
            
            ),
          
     //Main Page Contraier
         body:Container(
           
         height: mediaQuery.size.height,
         width: mediaQuery.size.width,
            
    
         alignment: Alignment.center,
         decoration: BoxDecoration(
           color: Colors.grey[300],
          
         ),
         child:Padding(
         padding: EdgeInsets.only(top:17),  
         child:Container(
           child: Column(
           children: [
              SizedBox(height: 30,),
           
           Text(
                  "Translator App",
                  style: TextStyle(
                    
                    color: Colors.orange[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),




              SizedBox(height: 70),
              

           Expanded(
              child:ListView(
                children: [

          //////////First Row/////////      
               Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 /////////////////////first///////////////////////////// 
                 Card(
                     child: new InkWell(
                        onTap: () {
                        Navigator.push( context, MaterialPageRoute(
                         builder: (context) => OnMobile(),));},
              child:  Container(
                   alignment: Alignment.center,
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),  
                   color: Colors.grey[200],
                   boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),]),
                   
                   

                   
                   child:Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                     
                  //  SizedBox(height: 20,),
                  
                   Image.asset(
                 'assets/OnMobile.png',
                  fit: BoxFit.contain,
                  height: 67,
              ),
              /* CircleAvatar(
                  backgroundImage: AssetImage('assets/OnMobile.png'),
                  maxRadius: 45,
                  backgroundColor: Colors.grey,
                      ),*/
                      SizedBox(height: 10,),
                   Text("On Mobile",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),

                   Text("Translation",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),
                   ]),) 
  ),
),
              SizedBox(width: 20,),
            ////////////////Second///////////////////                           
                Card(
                     child: new InkWell(
                        onTap: () {
                        Navigator.push( context, MaterialPageRoute(
                         builder: (context) => VoiceT(),));},
              child:  Container(
                   alignment: Alignment.center,
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),  
                   color: Colors.grey[200],
                   boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),]),
                   
                   

                   
                   child:Column(
                     
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                     children: [
                    
                  
                  /*CircleAvatar(
                  backgroundImage: AssetImage('assets/VoiceT.png'),
                  maxRadius: 45,
                  backgroundColor: Colors.grey,
                      ),*/
                  Image.asset(
                 'assets/VoiceT.png',
                  fit: BoxFit.contain,
                  height: 70,
              ),
                      SizedBox(height: 10,),

                   Text("Voice",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),

                    Text("Translation",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),

                   ]),) 
  ),
),
         
                  ]),
                   SizedBox(height: 20,),                      
                 
          //............Second Row.................//
                 
                 Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            ////////////////Third///////////////////     


                    Card(
                     child: new InkWell(
                        onTap: () {
                        Navigator.push( context, MaterialPageRoute(
                         builder: (context) => Dictionary(),));},
              child:  Container(
                   alignment: Alignment.center,
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),  
                   color: Colors.grey[200],
                   boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),]),
                   
                   

                   
                   child:Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                   
               /*CircleAvatar(
                  backgroundImage: AssetImage('assets/Dictionary.png'),
                  maxRadius: 45,
                  backgroundColor: Colors.grey,
                      ),*/
                  Image.asset(
                 'assets/Dictionary.png',
                  fit: BoxFit.contain,
                  height: 70,
              ),
                    SizedBox(height: 10,),
                   Text("Dictionaries",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),
                   ]),) 
  ),
),
                       SizedBox(width: 20,),
                    //////////////////Fourth/////////////////
                
                 Card(
                     child: new InkWell(
                        onTap: () {
                        Navigator.push( context, MaterialPageRoute(
                         builder: (context) => Chat(),));},
              child:  Container(
                   alignment: Alignment.center,
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),  
                   color: Colors.grey[200],
                   boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),]),
                   
                   

                   
                   child:Column(

                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                    
                  /*CircleAvatar(
                  backgroundImage: AssetImage('assets/Chat.png'),
                  maxRadius: 45,
                  backgroundColor: Colors.grey,
                  ),*/
                  Image.asset(
                 'assets/Chat.png',
                  fit: BoxFit.contain,
                  height: 75,
              ),
                   SizedBox(height: 10,),
                   Text("Chat",
                   style: TextStyle(color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
                   )),
                   ]),) 
  ),
),]),    
                
           ]))])))));
  }
}