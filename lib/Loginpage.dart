import 'package:flutter/material.dart';
import 'package:untitled34/signnup.dart';
import 'package:untitled34/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [


            Padding(


              padding: const EdgeInsets.all(10),
              child: Center(child: Image.asset("lib/images/foodninja.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: const Text("Login to your Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email"
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                label: Text("Password")
              ),),
            ),
            SizedBox(height: 30,),
            Text("Or continue with",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
            ),
           Row(

             children: [
               SizedBox(
                 height: 100,
                 width: 50,
               ),
               ElevatedButton.icon(
                 style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color> (Colors.white)),
                   onPressed:() {},
               icon: Icon(
                 Icons.home,
                 color: Colors.red,
                 size: 24,
               ),
                 label: Text("facebook",
                   style: TextStyle(
                     color: Colors.black
                   ),

                 ),
               ),
               SizedBox(
                 height: 100,
                 width: 60,
               ),
               ElevatedButton.icon(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color> (Colors.white)),

                 onPressed:() {},
                 icon: Icon(
                   Icons.home,
                   color: Colors.blueGrey,
                   size: 24,
                 ),
                 label: Text("Google",
                   style: TextStyle(
                     color: Colors.black

                   ),

                 ),
               ),

             ],
           ),
            Text("Forgot Your Password",
            style: TextStyle(
              color: Colors.green,
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 80,),

            GestureDetector(
              onTap: () =>
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return const signnup();

                  })),
              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),

                ),


                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

            ),



          ],






        ),
      ),



    );
  }
}
