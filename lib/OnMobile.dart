import 'package:flutter/material.dart';
class OnMobile  extends StatefulWidget {
 

  @override
   OnMobileState createState() =>  OnMobileState();
}



class  OnMobileState extends State<OnMobile> {   
   var _formKey = GlobalKey<FormState>();
   
   String dropdownvalue = 'English';
   String dropdownvalue2 = 'Urdu';
  var items =  ['Urdu','English','Chinese',];
  
  
   

  @override
  Widget build(BuildContext context) {
  // loadData();
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
    
              padding: const EdgeInsets.all(15.0), child: Text('On Mobile Translation',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
              
            ],),
      
            ),
          
           body:Container
        (
             alignment: Alignment.center,
             height: mediaQuery.size.height,
             width: mediaQuery.size.width,

           decoration: BoxDecoration(
           color: Colors.grey[300],),
           
             child:
            Container(
            
              height: 500,
              width: 320,
              padding:EdgeInsets.only(left: 55,right: 55,top:30,bottom: 30),
              
              alignment: Alignment.center,
              decoration: BoxDecoration(
                
                
              color:Colors.grey[200],
               boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),],
                
                borderRadius: BorderRadius.circular(20)
                ),
         
         child:SingleChildScrollView(
            child:Form(
                key: _formKey,
            child:Column(children: [
       Column(children: [
           Text(
            "Please enter the Details",
            style: TextStyle(color: Colors.black,
            fontSize: 19,
           fontWeight: FontWeight.bold,
            ),
              ),
       
          SizedBox(height: 30,) ,
          
           TextFormField(
             
                   keyboardType: TextInputType.name,
                
                 decoration:InputDecoration(
                   hintText:'Enter name of First Person',
                   labelText: 'First Person',
                   ) ,
                
                validator: (value) {
               if (value!.isEmpty) {
               return 'Please enter name of First Person';
                   }
               return null;
               },
               
                        ),


         
                 
       
             Container(width: 20,),
          

////////////////Drop Down Button///////////////
          DropdownButtonFormField(
                value: dropdownvalue,
                 decoration: InputDecoration(labelText: 'Preferred Language',
                  labelStyle: TextStyle(
                     color: Colors.black54,
                     fontSize: 22
                   ),),
                  icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                  items:items.map((String items) {
                       return DropdownMenuItem(
                           value: items,
                           child: Text(items)
                       );
                  }
                  ).toList(),
                onChanged: (String? newValue){
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },),

           TextFormField(
                   keyboardType: TextInputType.name,
                   decoration:InputDecoration(
                   hintText:'Enter name of Second Person',
                   labelText: 'Second Person',
                   ) ,
                
                validator: (value) {
               if (value!.isEmpty) {
               return 'Please enter name of Second Person';
                   }
               return null;
               },
               
                 ),

                 ////////////////Drop Down Button 2///////////////
          DropdownButtonFormField(
                  decoration: InputDecoration(labelText: 'Preferred Language',
                  labelStyle: TextStyle(
                     color: Colors.black54,
                     fontSize: 22
                   ),),
                
                value: dropdownvalue2,
                  icon:Icon(Icons.keyboard_arrow_down,color: Colors.black,),                  
                  items:items.map((String items) {
                       return DropdownMenuItem(
                           value: items,
                           child: Text(items)
                       );
                  }
                  ).toList(),
                
                onChanged: (String? newValue){
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },),
                  
              

       ]),

       SizedBox(height: 24,),
       
         ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.orange[900], // background
                    onPrimary: Colors.white, // foreground
                ),
                onPressed: ()
                 {  
                   
                },
                                     
                child: Text ("Submit",),
               ),      
            
            ]),)))
              
        )  
      
    );
  }
   }