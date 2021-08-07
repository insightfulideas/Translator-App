import 'package:flutter/material.dart';

class OnMobileChat  extends StatefulWidget {
 

  @override
   OnMobileChatState createState() =>  OnMobileChatState();
}



class  OnMobileChatState extends State<OnMobileChat> {
  late final Map<String, dynamic> userMap;
  late final String chatRoomId;

 // OnMobileChat({this.chatRoomId, this.userMap});

  final TextEditingController msg = TextEditingController();
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
          
           body:SingleChildScrollView(child: Column(children: [
           Container(
             height: size.height/ 1.25,
             width: size.width,
             child:StreamBuilder(
                
                builder: (BuildContext context,
                    AsyncSnapshot snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                       
                        return Text(snapshot.data.docs[index]['message']);
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
           
       Container(
           height: size.height /10,
           width: size.width,
             alignment: Alignment.center,
             
           decoration: BoxDecoration(
           color: Colors.grey[300],),
            
            child:Container(
            height: size.height/12,
            width:size.width/1.1,
             
             child:Row(children: [
               Container(width: 8,),
               Container(
                 height: size.height /1.5,
                 width: size.width/1.3,
                 child: TextField( 
                   controller: msg,
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
    
       
        
           ])));
       
    
     
     
     
     
     
     }}

