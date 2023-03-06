import 'package:flutter/material.dart';
import 'package:untitled34/Loginpage.dart';
import 'package:untitled34/paymentmethod.dart';
import 'package:untitled34/signnup.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(
        children: [

      Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, right:  300, left: 30),
                child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(14))
                  ),
                child: Column(

                children: [

                 Padding(
                   padding: const EdgeInsets.all(6.0),

                   child: IconButton(onPressed: () {
                     Navigator.pop(context, MaterialPageRoute(builder: (context){
                       return const signnup();
                     }
                     )
                     );},
                     icon: Icon(Icons.arrow_back,
                   color: Colors.orange,



                   ),

                   ),

                 ),
            ],
          ),




          ),
              ),




            ],




          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Fill in your bio to get started",
            style: TextStyle(
              fontSize: 38
            ),
            ),

          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("This data will be displayed in your account profile for security",
            style: TextStyle(
              fontSize: 15,

            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                labelText: "First Name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  labelText: "Last Name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  labelText: "Mobile Number"
              ),
            ),
          ),
         SizedBox(
           height: 200,
         ),

          GestureDetector(
            onTap: () =>
                Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                  return const paymentmethod();

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
        
        

      )
      ),
    );
  }
}
