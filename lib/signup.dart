import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week12/Login.dart';

class signup extends StatefulWidget{
  @override
  _signupState createState()=> _signupState();
}
class _signupState extends State< signup>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white60,
      body:
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context); },
                            icon:Icon(Icons.arrow_back_ios,
                                size:20,
                                color:Colors.deepPurpleAccent)
                        ),
                      ],),

                    Text("SignUp",
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),

                    Container(
                      child: Column(
                        children: [
                          inputFile(label: "Email"),
                          inputFile(label: "Password",obscureText: true),
                          inputFile(label: "Confirm Password",obscureText: true),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Text("SignUp"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                textStyle: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold)
                            ),)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(5),
                      height: 170,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/signup.png"),),),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
                      height: 60,
                      width: 500,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (c) => Login())),

                        child: Text("LogIn"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            textStyle: TextStyle(fontSize: 30,
                                fontWeight: FontWeight.bold)
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
    padding:EdgeInsets.all(5) ,
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
              vertical: 0,
              horizontal: 5,),
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
