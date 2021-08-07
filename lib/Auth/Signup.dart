import 'package:flutter/material.dart';

import '../Screens/Home.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final GlobalKey<FormState> _formKey=GlobalKey();
     bool _isPassObscured = true;
      bool _isPassObscured2 = true;
   void _toggleObscured() {
    setState(() {
      _isPassObscured = !_isPassObscured;
      _isPassObscured2 = !_isPassObscured2;
    });
   }
   


  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(15.0), child: Text('Translator App',
              style: TextStyle(
              color: Colors.white,
              fontSize:21 ),
              
              )),                
            ],),
      ),
       body:Container(
           height: mediaQuery.size.height,
           width: mediaQuery.size.width,
            
           alignment: Alignment.center,
           decoration: BoxDecoration(
           color: Colors.grey[300],  
        ),
        child:SingleChildScrollView(
        //Main  child:Column(children: [
           child:Form(
                key: _formKey,
     //Main Heading
         child:Column(
           
           mainAxisAlignment:MainAxisAlignment.center,
           children: [
          
         // SizedBox(height:10,),

           Text(
                  "Signup",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                     //fontWeight: FontWeight.bold,
                    ),
                ), 
                //Extra Container
              Container(height: 45,),
 Container(
           height: 370,
           width: 300,
           padding: EdgeInsets.symmetric(horizontal: 30),
           decoration: BoxDecoration(
           color:Colors.grey[200],
           boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.6),
                   spreadRadius:4,
                   blurRadius: 7,
                   offset: Offset(0, 3), 
                   ),],
           borderRadius:BorderRadius.circular(10),
           ),
           
           //ForFields
          
          child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
            children: [
              
            //////////Email///////////
              
              TextFormField(
             // onChanged: (value){email=value;},
                   
              decoration: InputDecoration(
              hintText:'Username',
               labelText: 'Username',
              icon:Icon(Icons.account_box)
            ),
          
  ),
                TextFormField(
              keyboardType: TextInputType.emailAddress,
               
                 decoration:InputDecoration(
                   hintText:'Email',
                   labelText: 'Email',
                  icon: Icon(Icons.email)
                  
                 ) ,
                  ),
                
            ////////Password/////////
          
             TextFormField(
          
               
                obscureText: _isPassObscured ? true : false,
                decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                icon:Icon(Icons.lock),
                suffixIcon: IconButton(  
                icon: Icon(_isPassObscured
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined),
                                onPressed: () {
                                  _toggleObscured();
                                },
                              ),
              ),
             ),
               TextFormField(
                  obscureText: _isPassObscured2 ? true : false,

                   keyboardType: TextInputType.visiblePassword,
      
                 decoration:InputDecoration(
                   hintText:'Confirm Password',
                   labelText: 'Confirm Password',
                   icon: Icon(Icons.lock)
                 ) ,
                  
                  ),

                  //Extra Container
              Container(height: 30,),
              ElevatedButton(
                         style: ElevatedButton.styleFrom(
                    primary: Colors.orange[900], // background
                    onPrimary: Colors.white, // foreground
                ),
                onPressed: ()
                 {  
                     Navigator.push(
              context,MaterialPageRoute(builder: (context) => Home()),
              );
                },
                                     
                child: Text ("Signup",),
               ),
                        ],),),
            



           ])))));
  }
}