import 'package:flutter/material.dart';

class OnMobileChat  extends StatefulWidget {
 

  @override
   OnMobileChatState createState() =>  OnMobileChatState();
}



class  OnMobileChatState extends State<OnMobileChat> {   
  // var _formKey = GlobalKey<FormState>();
    @override
  Widget build(BuildContext context) {
  // loadData();
    final size=MediaQuery.of(context).size;
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
    
              padding: const EdgeInsets.all(15.0), child: Text('On Mobile Translation',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
              
            ],),
      
            ),
          
           body:Container(),
        bottomNavigationBar:Container(
           height: size.height /10,
           width: size.width,
             alignment: Alignment.center,
             
           decoration: BoxDecoration(
           color: Colors.grey[300],),
            
            child:Container(
            height: size.height/12,
            width:size.width/1.1,
             
             child:Row(children: [

               Container(
                 height: size.height /1.5,
                 width: size.width/1.5,
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       )
                   ),
                 )
               ),
               IconButton(icon:Icon(Icons.send), onPressed:(){}),

             ],)
           )
        ),
    
       
        
         );
       
    
     
     
     
     
     
     }}

