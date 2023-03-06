import 'package:flutter/material.dart';
import 'package:untitled34/Loginpage.dart';
import 'package:untitled34/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const intropage(),
    );
  }
}

class intropage extends StatefulWidget {
  const intropage({Key? key}) : super(key: key);

  @override
  State<intropage> createState() => _intropageState();
}

class _intropageState extends State<intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("lib/images/eat.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text("find your comfort food here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  "Here you can find  chef or "
                      "dish for every taste and color. enjoy!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600

              ),
              ),
            ),
            const Spacer(flex: 3,),
            GestureDetector(
              onTap: () =>
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context){
                        return const Loginpage();

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
            const Spacer()

          ],
        ),
      ),
    );
  }
}
