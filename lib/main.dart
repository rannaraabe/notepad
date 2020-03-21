import 'package:flutter/material.dart';

void main() => runApp(AppNotes());

class AppNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(title: 'Notes'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void addNote() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Músicas para o jantar romântico:'),
                  color: Colors.yellow[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Músicas para lavar o banheiro:'),
                  color: Colors.yellow[200],
                ),

              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNote,
        tooltip: 'Adicione note',
        child: Icon(Icons.add),
      ), 
    );
  }
}
