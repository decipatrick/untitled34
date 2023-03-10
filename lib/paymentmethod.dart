import 'package:flutter/material.dart';
import 'package:untitled34/profilephoto.dart';
import 'package:untitled34/signup.dart';

class paymentmethod extends StatefulWidget {
  const paymentmethod({Key? key}) : super(key: key);

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(
          children: [   Padding( padding: EdgeInsets.only(top: 60, right: 300, left: 30),
            child: Container(
             decoration: BoxDecoration(
             color: Colors.orange,
           borderRadius: BorderRadius.all(Radius.circular(12))
         ),
              child: Column(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context){
                      return const profilephoto();
                    }
            ),
                    );

                  }, icon: Icon(Icons.arrow_back,
            color: Colors.orange.shade50,),
                  )


                ],
              ),
         ),
          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Payment Method",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold
              ),

              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("This data will be displayed in your account profile for security",
              style: TextStyle(
                fontSize: 14
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [

                    Image.asset("lib/images/paypal.png",
                    width: 150,
                    height: 70,),
                ],
              ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [

                  Image.asset("lib/images/visa.png",
                    width: 150,
                    height: 70,),
                ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [

                  Image.asset("lib/images/pay.png",
                    width: 150,
                    height: 70,),
                ],
                ),
              ),
            ),
            SizedBox(height: 200,),
            GestureDetector(
              onTap: () =>
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return const profilephoto();

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




    );
  }
}
