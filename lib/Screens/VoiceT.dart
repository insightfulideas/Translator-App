import 'dart:ui';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:translator_app/Screens/TranslatedVoice.dart';
import '../Models/SpeechApi.dart';


class VoiceT extends StatefulWidget {
 
  @override
  _VoiceTState createState() => _VoiceTState();
}
class _VoiceTState extends State<VoiceT> {
  String text="Press the button and start speaking";
  bool islistening=false;
  TextEditingController newtext= new TextEditingController();

  @override
  Widget build(BuildContext context) {
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
    
              padding: const EdgeInsets.all(15.0), child: Text('Voice Translation',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
              
            ],),),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   
   floatingActionButton: Padding(
            padding: const EdgeInsets.all(6.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
              children: <Widget> [
  
           AvatarGlow(
       animate: islistening,
        glowColor: Theme.of (context).primaryColor,
        endRadius: 75.0, 
     child: FloatingActionButton(
         onPressed: toggleRecording,
          child: Icon (islistening ? Icons.mic :  Icons.mic_none, size :30,color: Colors.white,),
          
          ),
            ),      
   FloatingActionButton(
          onPressed:(){Navigator.push(
              context,MaterialPageRoute(builder: (context) => TranslatedVoice()),
              ); },
          child: Icon (Icons.translate, size :30,color: Colors.white,),

   

                      
   )]),),
   
          body:Container(
          child:Column(
            children: [
           SingleChildScrollView(

            reverse:  true,
            padding :const EdgeInsets.all(40).copyWith(bottom: 150),
            
              child: Text(
                
              text,
              textAlign: TextAlign.center,
              style:TextStyle(
               
                fontSize:20,
                color: Colors.black,
                fontWeight: FontWeight.w400, 
              ),
            ),
            
            
            
            
            /*TextField(
               textAlign: TextAlign.center,
             onChanged: (value){text=value;},
             decoration: InputDecoration(
               
                hintStyle:TextStyle (
                fontSize: 22,
                color:Colors.black),
               hintText: text
             ),
            ),*/
            
          
             
           ),
          
           ])));

  
  
  
      }
Future toggleRecording()=> SpeechApi.toggleRecording(
  onResult: (text)=> setState(() => this.text=text,), 
  onListening: (islistening) {
    setState(()=>
     this.islistening =islistening);

     }
    
    ,);
} 
          
     
   
