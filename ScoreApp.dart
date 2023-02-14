import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increasedNumber() {
    setState(() {
      number++;
    });
  }

  void decreasedNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "Score is",
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.green,
                fontSize: 120,
                fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increasedNumber,
              ),
              SizedBox(
                width: 8,
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreasedNumber,
              ),
            ],
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            "Developed By Aayush Basnet",
            style: TextStyle(
                color: Color.fromARGB(255, 73, 36, 238), fontSize: 15),
          ),
        ],
      ),
    );
  }
}
