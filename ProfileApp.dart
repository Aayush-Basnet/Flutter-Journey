import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ProfileApp'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
              child: Image.network(
            "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ram-charan-teja-1046368-19-09-2017-02-37-43.jpg",
            height: 300,
            width: 300,
          )),
          SizedBox(height: 10),
          Text(
            'Name:Ram Charan',
            style: TextStyle(
                fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            'Address: Chennai,India',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          SizedBox(height: 5),
          Text(
            'Email:ramcharan@gmail.com',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 70),
          Text('Developed by: Aayush Basnet'),
        ],
      ),
    ),
  ));
}
