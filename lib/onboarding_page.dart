
import 'package:flutter/material.dart';
import 'package:praktikum3/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          
          Image.asset('assets/images/logo2.png', height: 70, width: 78),

          SizedBox(height: 20,),

          Image.asset('assets/images/mie.png', height: 280, width: 280,),
          
          // Container(
          //   width: 150,
          //   height: 150,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(100),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.red.shade400.withOpacity(0.2),
          //         spreadRadius: 20,
          //       )
          //     ],
          //   ),
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/gambar.png', ),
          //   ),
          // ),
        
          SizedBox(height: 20,),

          
          Text('All your \n favourite ramen', textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10,),
          
          Text('Delicious as is or tossed with your \n favourite ingredients', 
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(0.5),
          ),
          ),
          
          SizedBox(height: 50,),

          SizedBox(
            height: 55,
            width: 320,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 166, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed:(){
              print("tesss");
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            ),
          ),
          SizedBox(height: 10,),

          SizedBox(
            height: 55,
            width: 320,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(color: Colors.grey)
            ),
            onPressed:(){
              print("tesss");
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: const Text(
              'Login',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
            ),
          ),
          
          // Container(
          //   width: 320,
          //   height: 55,
          //   child: TextButton(
          //     style: TextButton.styleFrom(
          //       backgroundColor: Color.fromARGB(255, 255, 166, 0),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //     ),
          //     onPressed: () {
          //       print('Sign in');
          //     },
          //     child: Text('Sign in', 
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 255, 255, 255),
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold
          //     ),
          //     ),
          //   ),
          // ),
          
          //button bawah
          // RaisedButton(padding: EdgeInsets.symmetric(vertical: 21, horizontal: 130),
          //   onPressed: (){
          //   print('RaisedButton');
          // },
          // color: Colors.white,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
          // child: Text('Register', style: TextStyle(
          //   color: Colors.grey,
          //   ),
          // ),
          // )


          
        ],
      ),
      )
      
    );
  }
}