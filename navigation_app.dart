import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Nav App",
      home: MainPage(),
    ));

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> meroWidget = <Widget>[
    HamroOption("Welcome to Homepage", Color(0xFF3944F7)),
    HamroOption("Welcome to About", Color.fromARGB(151, 6, 186, 33)),
    HamroOption("Welcome to Settings", Color.fromARGB(174, 51, 152, 195)),
    /*
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 95,
        width: double.infinity,
        color: Color.fromARGB(151, 6, 186, 33),
        child: Center(
          child: Text(
            "Welcome to About",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 95,
        width: double.infinity,
        color: Color.fromARGB(174, 51, 152, 195),
        child: Center(
          child: Text(
            "Welcome to Settings",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    )
    */
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation App"),
        backgroundColor: Color.fromARGB(222, 8, 216, 239),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      drawer: Drawer(),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
    );
  }
}

class HamroOption extends StatelessWidget {
  final String title;
  final Color color;
  HamroOption(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 95,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
