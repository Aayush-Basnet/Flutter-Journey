import 'package:flutter/material.dart';

/*
class Homescreen extends StatelessWidget {
  final String username;
  Homescreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        //backgroundColor: myColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Aayush Basnet"),
                accountEmail: Text("aayushbasnet@gmail.com")),
            ListTile(
              title: Text(
                'Photos',
              ),
              subtitle: Text('Photos Item'),
              leading: Icon(Icons.photo_album),
              onTap: () {
                print("Photos");
              },
            ),
            ListTile(
              title: Text('Portfolio'),
              subtitle: Text('Stock Portfolio'),
              leading: Icon(Icons.shopping_cart_checkout),
              onTap: () {
                print("Portfolio pressed");
              },
            ),
            ListTile(
              title: Text('Notification'),
              //subtitle: Text('Notification'),
              leading: Icon(Icons.notifications),
              onTap: () {
                print("Logged out");
              },
            ),
            ListTile(
              title: Text('Report'),
              subtitle: Text('Report Item'),
              leading: Icon(Icons.report),
              onTap: () {
                print("Report pressed");
              },
            ),
            ListTile(
              title: Text('User'),
              subtitle: Text('User Detail'),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                print("User pressed");
              },
            ),
            ListTile(
              title: Text(
                'Switch Account',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              // subtitle: Text('Log out'),
              leading: Icon(Icons.switch_account),
              onTap: () {
                print("Logged out");
              },
            ),
            ListTile(
              title: Text(
                'Sign out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Log out'),
              leading: Icon(Icons.logout),
              onTap: () {
                print("Logged out");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(15),
            color: Color.fromARGB(255, 239, 246, 248),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: Text(
                      "Hello " + username,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    )),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ],
            )
            ),
      ),
    );
  }
}
*/
const myColor = Color.fromARGB(255, 16, 240, 49);

class Homescreen extends StatefulWidget {
  final String username;
  Homescreen(this.username);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  List<Widget> merowidget = <Widget>[
    Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 95,
        width: double.infinity,
        color: Color(0xFF5342),
        child: Center(
          child: Text("Welcome to Homepage"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 95,
        width: double.infinity,
        color: Color(0xFF5342),
        child: Center(
          child: Text("Welcome to Chats"),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 95,
        width: double.infinity,
        color: Color(0xFF5342),
        child: Center(
          child: Text("Welcome to Profile"),
        ),
      ),
    ),
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
        title: Text("Signal"),
      ),
      bottomNavigationBar: Center(
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Aayush Basnet"),
                accountEmail: Text("aayushbasnet@gmail.com")),
            ListTile(
              title: Text(
                'Photos',
              ),
              subtitle: Text('Photos Item'),
              leading: Icon(Icons.photo_album),
              onTap: () {
                print("Photos");
              },
            ),
            ListTile(
              title: Text('Portfolio'),
              subtitle: Text('Stock Portfolio'),
              leading: Icon(Icons.shopping_cart_checkout),
              onTap: () {
                print("Portfolio pressed");
              },
            ),
            ListTile(
              title: Text('Notification'),
              //subtitle: Text('Notification'),
              leading: Icon(Icons.notifications),
              onTap: () {
                print("Logged out");
              },
            ),
            ListTile(
              title: Text('Report'),
              subtitle: Text('Report Item'),
              leading: Icon(Icons.report),
              onTap: () {
                print("Report pressed");
              },
            ),
            ListTile(
              title: Text('User'),
              subtitle: Text('User Detail'),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                print("User pressed");
              },
            ),
            ListTile(
              title: Text(
                'Switch Account',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              // subtitle: Text('Log out'),
              leading: Icon(Icons.switch_account),
              onTap: () {
                print("Logged out");
              },
            ),
            ListTile(
              title: Text(
                'Sign out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Log out'),
              leading: Icon(Icons.logout),
              onTap: () {
                print("Logged out");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  merowidget.elementAt(_selectedIndex),
                  Center(
                      child: Text(
                    "Welcome to Signal",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  )),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
