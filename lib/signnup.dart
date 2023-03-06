import 'package:flutter/material.dart';
import 'package:untitled34/signup.dart';
import 'package:firebase_core/firebase_core.dart';


class signnup extends StatefulWidget {
  const signnup({Key? key}) : super(key: key);

  @override
  State<signnup> createState() => _signnupState();
}

class _signnupState extends State<signnup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(child: Image.asset("lib/images/foodninja.png")),

            ),
            SizedBox(height: 40,),
            Text("Sign Up For Free"),
            Column(
              children:  [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:"Anamwp...",
                    prefixIcon: Icon(Icons.person)
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail)
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off)


                  ),),
                ),
                Column(

                  children: [



                    TextButton.icon(onPressed: () {},
                    icon: Padding(

                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Icon(Icons.check),
                    ),
                    label: Text("Keep Me Signed In"),
                    ),
                    TextButton.icon(onPressed: () {},
                      icon: Icon(Icons.check),
                      label: Text("Email Me About Special Pricing"),

                    ),

                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context){
                        return const signup();

                      })),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),

                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text("Create an Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Text("Already have an account ?",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 10

                ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
