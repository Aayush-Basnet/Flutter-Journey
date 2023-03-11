import 'package:flutter/material.dart';
import 'package:loginsystem/screen/homescreen.dart';

TextStyle mystyle = TextStyle(
  fontSize: 20,
);

class LoginScrren extends StatefulWidget {
  const LoginScrren({super.key});

  @override
  State<LoginScrren> createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usenamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );
    final myloginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.00),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        onPressed: () {
          if (username == "aayushbasnet" && password == "password") {
            //print("Login successful");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Homescreen(username)));
          } else {
            print("Incorrect password or username");
          }
        },
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 157, 204, 243),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.supervised_user_circle_rounded,
                        size: 130,
                        color: Color.fromARGB(255, 251, 247, 247),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      usenamefield,
                      SizedBox(
                        height: 10,
                      ),
                      passwordfield,
                      SizedBox(
                        height: 20,
                      ),
                      myloginbutton,
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Developed By Aayush Basnet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
