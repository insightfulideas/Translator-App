import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
   const Chat({ Key? key }) : super(key: key);
 
   @override
   _ChatState createState() => _ChatState();
 }
 
 class _ChatState extends State<Chat> {
   @override
   Widget build(BuildContext context) {
   //  final mediaQuery=MediaQuery.of(context);
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
    
              padding: const EdgeInsets.all(15.0), child: Text('Chat',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
              
            ],),
      
            ),
                 
     );
   }
 } 