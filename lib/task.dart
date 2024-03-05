
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task1/login.dart';
import 'package:task1/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
        Navigator.push(context,MaterialPageRoute(builder: (context) =>  PagesignUp(name: namecontroller.text.toString(),)));
     });
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  TextEditingController namecontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent
      ),
      backgroundColor: Colors.yellowAccent,
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 350,
            child: Image.asset('assets/images/HoneyBee.png')),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: namecontroller,
                
                style: TextStyle(),
                decoration: InputDecoration(
                hintText: "chgchgch",
                
                  
                  border: OutlineInputBorder()
                ),
              ),
            ),
            // Text('Build Awesome Apps',style: TextStyle(color: Colors.black,fontSize: 40)),
            // Text('Lets put your creativity on the',style: TextStyle(color: Colors.black,fontSize: 30)),
            //  Text('development highway',style: TextStyle(color: Colors.black,fontSize: 30)),
          Padding(
            padding:  const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 40,
                 width: 120,
                   child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const PageLogin()));
                    }, child: const Text('Login')),
                 ),
                  SizedBox(height: 40,
                  width: 120,
                    child: ElevatedButton(style:  ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.red),
                    ) ,
                      onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  PagesignUp(name: namecontroller.text.toString(),)));
                    }, child: const Text('SignUp')),
                  )
              ]
            ),
          )
        ],
      ),
    );
  }
}