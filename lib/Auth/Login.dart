import 'package:flutter/material.dart';
import '../Screens/Home.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  static const routename="/Login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey=GlobalKey();


  bool _isPassObscured = true;
   void _toggleObscured() {
    setState(() {
      _isPassObscured = !_isPassObscured;
    });
   }
   

   



  @override
  Widget build(BuildContext context) {
     final mediaQuery=MediaQuery.of(context);
    
    
    //APP BAR
    return Scaffold(
     //Main Page Contraier
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
          
          SizedBox(height:55 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

        //  SizedBox(width: 100,),    
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
             
           Text(
                  "Welcome to",
                  style: TextStyle(
                    
                    color: Colors.orange[900],
                    fontSize: 23,//15
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),

                    Text(
                  "Translator App",
                  style: TextStyle(
                    
                    color: Colors.orange[900],
                    fontSize: 27,//27
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ]),
             SizedBox(width: 10,),
              Image.asset(
                 'assets/Translator.png',
                  fit: BoxFit.contain,
                  height: 60,
                  width: 60,
                  
              ),
            
              
              ]),
                //Extra Container
              Container(height:30,),

                  //Second Heading
                  Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                     //fontWeight: FontWeight.bold,
                 
                   
                  ),
                ),

                
               
               //Extra Container
              Container(height: 25,),
           Container(
           height: 270,
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
              hintText:'Email',
              icon:Icon(Icons.account_box)
              
            ),
          
  ),

            ////////Password/////////
          
             TextFormField(
          
               
                obscureText: _isPassObscured ? true : false,
                decoration: InputDecoration(
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
                                     
                child: Text ("LOGIN",),
               ),
                        ],),),
            
           Container(height: 25,),
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
                                     
                child: Text ("Continue without Login",
                   style: TextStyle(
                     fontSize: 15,
                   ),
                
                    ),
              ),
            //////Last Text///////
              Container(height: 10,),
           
                TextButton(
                  onPressed: (){ 
                    Navigator.push(
              context,MaterialPageRoute(builder: (context) => Signup()),
              );
                  },

                  child: Text('Signup?',
                   style: TextStyle(
                     fontSize: 16,
                     color: Colors.black
                   ),
                  
                ),
        
        ),
        
       ],  
    )
  
         ) 
    
    ),));
    
  }
}