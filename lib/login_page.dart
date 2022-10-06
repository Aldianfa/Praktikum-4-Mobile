
import 'package:flutter/material.dart';
import 'package:praktikum3/Home_Page_1.dart';
import 'package:praktikum3/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            print('kembali');
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 14,),

            Text('Login to your account',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.5),
              
            ),
            ),

            SizedBox(height: 36,),

            Text('Email',
            style: TextStyle(
              fontSize: 16,
            ),),

            SizedBox(height: 12,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email'
              ),
            ),

            SizedBox(height: 20,),

            Text('Password',
            style: TextStyle(
              fontSize: 16,
            ),),

            SizedBox(height: 12,),

            

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Password'
              ),
            ),

            SizedBox(height: 13,),

            
            TextButton(onPressed: () {}, 
            child: Text('Forget Password?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color.fromARGB(255, 255, 166, 1)
            ),
            )
            ),

            SizedBox(height: 159,),
            
            Center(
              child: Column(
                children: [
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
                      onPressed: () {
                        print('tess');
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page()));
                      },
                      child: Text('Login'),
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account yet?",
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                        TextButton(
                          child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 166, 1)
                          ),),
                          onPressed: () {
                            print('object');
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_Page()));
                          },
                        )
                      ],
                    ),
                  )

                  
                  // Center(
                  //   child : Row(
                  //   children: [
                  //     Text('jika anda lupa password'),
                  //     TextButton(
                  //       child: Text('data'),
                  //       onPressed: () {
                  //         print('coba');
                  //         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  //       },
                  //     )
                  //   ]
                  // ),
                  // ),

                  
                ],
              ),
            )

            // Center(
            //   child: Container(
            //     width: 320,
            //     height: 55,
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         primary: Color.fromARGB(255, 255, 166, 1),
            //         shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       onPressed: () {
            //         print('Tombol Login');
            //       },
            //       child: Text('Login',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold
            //       ),),
            //     ),
            //   )
            // ),
                  
            
          ],
        ),
      ),

    );
  }
}