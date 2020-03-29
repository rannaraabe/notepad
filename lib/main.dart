import 'package:flutter/material.dart';

void main() {
  runApp(AppNotes());
}

class AppNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(title: 'Notepad'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void addNote() {
    setState(() {
      // create a note
      // adicionar um container
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Press the button for add a note!')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNote,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ), 
    );
  }
}
