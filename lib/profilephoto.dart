import 'package:flutter/material.dart';
import 'package:untitled34/paymentmethod.dart';
import 'package:untitled34/photoss.dart';

class profilephoto extends StatefulWidget {
  const profilephoto({Key? key}) : super(key: key);

  @override
  State<profilephoto> createState() => _profilephotoState();
}

class _profilephotoState extends State<profilephoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 300, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(12)),

                ),
                child: Column(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context, MaterialPageRoute(builder: ( context){
                        return const paymentmethod();
                      }
                      )
                      );

                    }, icon: Icon(Icons.arrow_back,
                      color: Colors.white,

                    ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Upload your photo profile",
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

                  Image.asset("lib/images/galerry.png",
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

                  Image.asset("lib/images/camera.png",
                    width: 150,
                    height: 70,),
                  SizedBox(height: 200,),
                  GestureDetector(
                    onTap: () =>
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context){
                          return const photoss();

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
            ),

          ],
        ),
      ),
    );
  }
}
