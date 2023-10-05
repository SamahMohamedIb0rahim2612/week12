import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week12/signup.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() {   return _LoginState();  }
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/loginn.png"),),),
                      ),

                      SizedBox(height: 10,),

                     Text("LOGIN",
                     style: TextStyle(fontSize: 30,
                         fontWeight: FontWeight.bold,
                     color: Colors.white),),

                      SizedBox(height: 15,),

                  Container(
                    child: Column(
                      children: [
                        inputFile(label: "Email"),
                        inputFile(label: "Password",obscureText: true)
                      ],
                    ),
                  ),

                      SizedBox(height: 5,),
                      
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Forget Password?",
                              style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.bold,
                              color: Colors.white),),
                            ElevatedButton(
                                onPressed: (){},
                              child: Text("LogIn"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple,
                                  textStyle: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),)
                          ],
                        ),
                      ),

                      SizedBox(height: 15,),

                      Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        width: 550,
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (c) => signup())),

                          child: Text("SignUp"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
                          ),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
    );
  }
}


Widget inputFile({label, obscureText = false})
{
  return Container(
    padding:EdgeInsets.all(10) ,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),

        SizedBox(height: 5,),

        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.deepPurpleAccent),
            ),
          ),
        ),
        SizedBox(height: 5,),
      ],
    ),
  );
}