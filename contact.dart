import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dialer App",
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var contactlist = ["Aayush ", "Akash ", " Rubina"];
  var phoneNumber = ["9845740472", "9873958237", "9804965835"];

  addlist(String item) {
    setState(() {
      contactlist.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 18, 164, 237),
        title: Text("Contacts"),
        //centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: contactlist.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              title: Text(contactlist[index]),
              subtitle: Text(phoneNumber[index]),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  launch("tel://${phoneNumber[index]}");
                },
              ),
            );
          })),
    );
  }
}
