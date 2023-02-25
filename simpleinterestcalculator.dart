import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String p = " ", t = " ", r = " ", result = " ";

  // void resetnumber() {
  //   setState(() {
  //     p = " ";
  //     t = " ";
  //     r = " ";
  //     result = " ";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: mycolor,
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.restore_page_rounded,
      //     size: 30,
      //   ),
      //   onPressed: resetnumber,
      // ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            // for  principal
            TextField(
              onChanged: (val) {
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter principal",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 197, 84),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            ),
            // for time
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val) {
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter time",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 197, 84),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            ),
            // for rate
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val) {
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter rate",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 197, 84),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            // for button
            MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.red),
                ),
                height: 45,
                color: mycolor,
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    result = (double.parse(p) *
                            double.parse(t) *
                            double.parse(r) /
                            100)
                        .toString();
                  });
                }),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "The simple interest is: $result",
                style: TextStyle(fontSize: 20, color: mycolor),
              ),
            ),
            SizedBox(
              height: 135,
            ),
            Center(
              child: Text(
                "Developed By Aayush Basnet",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: mycolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const mycolor = Color.fromARGB(239, 240, 7, 7);
