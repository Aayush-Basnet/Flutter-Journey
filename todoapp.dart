import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do App",
      home: ToDoApp(),
    ));

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  late String value;
  var listtodo = [' '];

  addTODo(String item) {
    setState(() {
      listtodo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "To Do List",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addTODo(value);
          },
        ),
        body: ListView.builder(
            itemCount: listtodo.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Add Item",
                        ),
                        onChanged: (val) {
                          value = val;
                        },
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.search_off_outlined),
                      title: Text(
                        '${listtodo[index]}',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    );
            }));
  }
}
